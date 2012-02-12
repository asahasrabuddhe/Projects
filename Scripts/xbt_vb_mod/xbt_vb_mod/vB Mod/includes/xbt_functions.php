<?php
	require_once(dirname(__FILE__) . '/xbt_config.php');

	function xbt_b2a($v)
	{
		for ($l = 0; $v < -999 || $v > 999; $l++)
			$v /= 1024;
		$a = array('b', 'kb', 'mb', 'gb', 'tb', 'pb', 'eb', 'zb', 'eb');
		return sprintf('%.2f %s', $v, $a[$l]);
	}

	function xbt_format_uploaded_downloaded_ratio(&$uploaded, &$downloaded, &$ratio)
	{
		$ratio = $downloaded ? sprintf('%.2f', $uploaded / $downloaded) : '-';
		$downloaded = xbt_b2a($downloaded);
		$uploaded = xbt_b2a($uploaded);
	}

	function db_connect()
	{
		global $config, $mysqli_link;
		if (strtolower($config['Database']['dbtype']) == 'mysqli')
		{
			$mysqli_link = mysqli_connect($config['MasterServer']['servername'], $config['MasterServer']['username'], $config['MasterServer']['password']);
			if (!$mysqli_link)
				die(htmlspecialchars(mysqli_connect_error()));
			mysqli_select_db($mysqli_link, $config['Database']['dbname']) || die(htmlspecialchars($mysqli_link, mysqli_error()));
		}
		else
		{
			mysql_pconnect($config['MasterServer']['servername'], $config['MasterServer']['username'], $config['MasterServer']['password']) || die(htmlspecialchars(mysql_error()));
			mysql_select_db($config['Database']['dbname']) || die(htmlspecialchars(mysql_error()));
		}
		define('TABLE_PREFIX', $config['Database']['tableprefix']);
	}

	function db_query($query)
	{
		global $config, $mysqli_link;
		// printf('%s<br>', htmlspecialchars($query));
		if (strtolower($config['Database']['dbtype']) == 'mysqli')
		{
			if ($result = mysqli_query($mysqli_link, $query))
				return $result;
			printf('%s<br>%s<br>', htmlspecialchars(mysqli_error($mysqli_link)), htmlspecialchars($query));
		}
		else
		{
			if ($result = mysql_query($query))
				return $result;
			printf('%s<br>%s<br>', htmlspecialchars(mysql_error()), htmlspecialchars($query));
		}
		die();
	}

	function db_fetch($result)
	{
		global $config;
		return strtolower($config['Database']['dbtype']) == 'mysqli' ? mysql_fetch_associ($result) : mysql_fetch_assoc($result);
	}

	function db_query_all($query)
	{
		$result = db_query($query);
		$d = array();
		while ($row = db_fetch($result))
			$d[] = $row;
		return $d;
	}

	function xbt_insert_into_cache($name, $value)
	{
		db_query(sprintf("replace into xbt_cache (name, value) values ('%s', '%s')", mysql_real_escape_string($name), mysql_real_escape_string(serialize($value))));
	}

	function xbt_cron()
	{
		global $xbt_config;
		db_query(sprintf("update %sattachment a inner join %spost p using (postid) inner join %sthread t on p.threadid = t.threadid set t.bt_info_hash = a.bt_info_hash where a.bt_info_hash is not null", TABLE_PREFIX, TABLE_PREFIX, TABLE_PREFIX));
		db_query(sprintf("update %sattachment inner join xbt_files on bt_info_hash = info_hash set bt_completed = completed, bt_leechers = leechers, bt_seeders = seeders", TABLE_PREFIX));
		db_query(sprintf("update %sthread inner join xbt_files on bt_info_hash = info_hash set bt_completed = completed, bt_leechers = leechers, bt_seeders = seeders", TABLE_PREFIX));
		db_query(sprintf("update %suser inner join xbt_users on userid = uid set bt_downloaded = downloaded, bt_uploaded = uploaded", TABLE_PREFIX));
		db_query(sprintf("update xbt_files left join %sattachment on info_hash = bt_info_hash set flags = flags | 1 where bt_info_hash is null", TABLE_PREFIX));
		db_query(sprintf("insert ignore into xbt_users (uid) select userid from %suser", TABLE_PREFIX));
		db_query(sprintf("delete from xbt_files_users where mtime < unix_timestamp() - 91 * 24 * 60 * 60"));
		db_query(sprintf("delete xbt_users from xbt_users left join %suser on uid = userid where userid is null", TABLE_PREFIX));

		xbt_insert_into_cache('top_uploaders', db_query_all(sprintf("select * from %suser left join xbt_users on userid = uid where uploaded order by uploaded desc limit 10", TABLE_PREFIX)));
		xbt_insert_into_cache('top_downloaders', db_query_all(sprintf("select * from %suser left join xbt_users on userid = uid where downloaded order by downloaded desc limit 10", TABLE_PREFIX)));
		xbt_insert_into_cache('top_seeders', db_query_all(sprintf("select * from %suser left join xbt_users on userid = uid where uploaded order by uploaded / downloaded desc limit 10", TABLE_PREFIX)));
		xbt_insert_into_cache('top_leechers', db_query_all(sprintf("select * from %suser left join xbt_users on userid = uid where downloaded order by uploaded / downloaded limit 10", TABLE_PREFIX)));
		xbt_insert_into_cache('top_posters', db_query_all(sprintf("select * from %suser left join xbt_users on userid = uid where posts order by posts desc limit 10", TABLE_PREFIX)));
	}

	function xbt_install()
	{
		require_once('adminfunctions_attachment.php');
		global $vbulletin;
		$vbulletin->db->hide_errors();
		$a = preg_split("/;\s/", @file_get_contents('xbt_tracker.sql'));
		foreach ($a as $b)
		{
			if (!empty($b))
				$vbulletin->db->query_write($b);
		}
		$a = preg_split("/;\s/", @file_get_contents('xbt_vb_mod.sql'));
		foreach ($a as $b)
		{
			if (!empty($b))
				$vbulletin->db->query_write($b);
		}
		$vbulletin->db->show_errors();
		if (!$vbulletin->db->query_first("select value from xbt_config where name = 'anonymous_announce'"))
			$vbulletin->db->query_write("insert into xbt_config (name, value) values ('anonymous_announce', 0)");
		if (!$vbulletin->db->query_first("select value from xbt_config where name = 'auto_register'"))
			$vbulletin->db->query_write("insert into xbt_config (name, value) values ('auto_register', 0)");
		if (!$vbulletin->db->query_first("select value from xbt_config where name = 'listen_port'"))
			$vbulletin->db->query_write("insert into xbt_config (name, value) values ('listen_port', 2710)");
		build_attachment_permissions();
	}

	function xbt_get_tracker_stats()
	{
		global $vbulletin, $xbt_config;
		$row = $vbulletin->db->query_first("select ifnull(sum(completed), 0) completed, ifnull(sum(leechers), 0) leechers, ifnull(sum(seeders), 0) seeders, ifnull(sum(leechers or seeders), 0) torrents from xbt_files");
		$row['peers'] = $row['leechers'] + $row['seeders'];
		$row['tracker_url'] = $xbt_config['announce_url'];
		$row = array_merge($row, $vbulletin->db->query_first("select sum(downloaded) downloaded, sum(uploaded) uploaded from xbt_users"));
		$row['ratio'] = $row['downloaded'] ? sprintf('%.2f', $row['uploaded'] / $row['downloaded']) : '-';
		$row['downloaded'] = xbt_b2a($row['downloaded']);
		$row['uploaded'] = xbt_b2a($row['uploaded']);
		return $row;
	}

	function xbt_attachdata_delete()
	{
		global $vbulletin;
		$vbulletin->db->query_write(sprintf("update xbt_files f left join %sattachment a on f.info_hash = a.bt_info_hash set f.flags = f.flags | 1 where a.bt_info_hash is null", TABLE_PREFIX));
	}

	function xbt_attachdata_postsave($dm)
	{
		require_once('benc.php');
		global $vbulletin;
		if ($dm->attachment['extension'] != 'torrent')
			return;
		$torrent = bdec(empty($dm->info['filedata']) ? file_get_contents(fetch_attachment_path($dm->attachment['userid'], $dm->attachment['attachmentid'])) : $dm->info['filedata']);
		if (!isset($torrent))
			return;
		$bt_info_hash = pack('H*', sha1($torrent['value']['info']['string']));
		$bt_name = $torrent['value']['info']['value']['name']['value'];
		$bt_tracker = $torrent['value']['announce']['value'];
		$vbulletin->db->query_write(sprintf("delete from xbt_sub_files where info_hash = '%s'", addslashes($bt_info_hash)));
		if ($torrent['value']['info']['value']['length'])
		{
			$name = $torrent['value']['info']['value']['name']['value'];
			$size = $torrent['value']['info']['value']['length']['value'];
			$vbulletin->db->query_write(sprintf("insert into xbt_sub_files (info_hash, name, size) values ('%s', '%s', '%.0f')",
				addslashes($bt_info_hash), addslashes($name), $size));
			$bt_size = $size;
		}
		else
		{
			$bt_size = 0;
			foreach ($torrent['value']['info']['value']['files']['value'] as $file)
			{
				$name = '';
				foreach ($file['value']['path']['value'] as $a)
					$name .= '/' . $a['value'];
				$size = $file['value']['length']['value'];
				$vbulletin->db->query_write(sprintf("insert into xbt_sub_files (info_hash, name, size) values ('%s', '%s', '%.0f')",
					addslashes($bt_info_hash), addslashes($name), $size));
				$bt_size += (float)$size;
			}
		}
		$vbulletin->db->query_write(sprintf("update %sattachment set bt_info_hash = '%s', bt_name = '%s', bt_size = '%.0f', bt_tracker = '%s' where attachmentid = %d",
			TABLE_PREFIX, addslashes($bt_info_hash), addslashes($bt_name), $bt_size, addslashes($bt_tracker), $dm->attachment['attachmentid']));
		$vbulletin->db->query_write(sprintf("insert ignore into xbt_files (info_hash, mtime, ctime) values ('%s', unix_timestamp(), unix_timestamp())", addslashes($bt_info_hash)));
	}

	function xbt_attachment_display()
	{
		global $attachmentinfo, $extension, $fp, $vbulletin, $xbt_config;
		if ($extension != 'torrent' || !$xbt_config['torrent_pass_tracking'])
			return;
		$uid = $vbulletin->userinfo['userid'];
		$row = $vbulletin->db->query_first("select value from xbt_config where name = 'torrent_pass_private_key'");
		$torrent_pass_private_key = $row['value'];
		$row = $vbulletin->db->query_first(sprintf("select * from xbt_users where uid = %d", $uid));
		if ($xbt_config['attachment_download_banner'] && !isset($_REQUEST['step']))
		{
			$user = $row;
			xbt_format_uploaded_downloaded_ratio($user['uploaded'], $user['downloaded'], $user['ratio']);
			eval('print_output("' . fetch_template('xbt_attachment_download_banner') . '");');
			die();
		}
		require_once('benc.php');
		$torrent = bdec($vbulletin->options['attachfile'] ? fread($fp, 1048576) : $attachmentinfo['filedata']);
		$torrent_pass = substr(sha1(sprintf('%s %d %d %s', $torrent_pass_private_key, $row['torrent_pass_version'], $uid, pack('H*', sha1($torrent['value']['info']['string'])))), 0, 24);
		$announce_url = parse_url($xbt_config['announce_url']);
		$announce_url = sprintf('http://%s:%d/%08x%s/announce', $announce_url['host'], $announce_url['port'], $uid, $torrent_pass);
		$attachmentinfo['filedata'] = sprintf('d8:announce%d:%s4:info%se', strlen($announce_url), $announce_url, $torrent['value']['info']['string']);
		$attachmentinfo['filesize'] = strlen($attachmentinfo['filedata']);
		$vbulletin->options['attachfile'] = false;
	}

	function xbt_cache_templates()
	{
		global $globaltemplates;
		$globaltemplates[] = 'xbt_css';
		switch (THIS_SCRIPT)
		{
		case 'index':
			$globaltemplates[] = 'tracker_stats';
			break;
		case 'member':
			$globaltemplates[] = 'memberinfo_block_xbt';
			$globaltemplates[] = 'memberinfo_torrentbit';
			break;
		case 'showthread':
			$globaltemplates[] = 'postbit_attachment_sub_files';
			$globaltemplates[] = 'postbit_attachment_sub_files_row';
			$globaltemplates[] = 'postbit_attachment_users';
			$globaltemplates[] = 'postbit_attachment_users_row';
			break;
		}
	}

	function xbt_forumdisplay_query()
	{
		global $hook_query_fields;
		$hook_query_fields .= ", thread.bt_seeders, thread.bt_leechers, thread.bt_completed";
	}

	function xbt_forumhome_complete()
	{
		global $stylevar, $tracker_stats_bit;
		$tracker_stats = xbt_get_tracker_stats();
		eval('$tracker_stats_bit = "' . fetch_template('tracker_stats') . '";');
	}

	function xbt_member_complete(&$userinfo, &$block_data)
	{
		global $vbulletin;
		xbt_format_uploaded_downloaded_ratio($userinfo['bt_uploaded'], $userinfo['bt_downloaded'], $userinfo['bt_ratio']);
		$torrents = $vbulletin->db->query_read(sprintf("
			select a.attachmentid, a.bt_name, a.bt_size, a.bt_tracker, f.forumid, f.title, p.postid, t.replycount, t.threadid, u.userid, u.username,
				xf.leechers,
				xf.seeders,
				xf.completed,
				xfu.downloaded bt_downloaded,
				xfu.left bt_left,
				xfu.uploaded bt_uploaded,
				xfu.mtime mtime
			from xbt_files xf
				inner join xbt_files_users xfu on xf.fid = xfu.fid
				inner join %sattachment a on a.bt_info_hash = xf.info_hash
				inner join %spost p using (postid)
				inner join %sthread t using (threadid)
				inner join %suser u on a.userid = u.userid
				inner join %sforum f on t.forumid = f.forumid
			where xfu.uid = %d
			order by xfu.mtime desc
			limit 15
		", TABLE_PREFIX, TABLE_PREFIX, TABLE_PREFIX, TABLE_PREFIX, TABLE_PREFIX, $userinfo['userid']));
		$torrentbits = '';
		while ($torrent = $vbulletin->db->fetch_array($torrents))
		{
			$left = $torrent['bt_left'];
			$torrent['bt_name'] = htmlspecialchars($torrent['bt_name']);
			$torrent['bt_done'] = $torrent['bt_size'] ? intval(($torrent['bt_size'] - $torrent['left']) * 100 / $torrent['bt_size']) : '';
			$torrent['bt_left'] = xbt_b2a($torrent['bt_left']);
			$torrent['bt_size'] = xbt_b2a($torrent['bt_size']);
			$torrent['ctime'] = gmdate('Y-m-d H:s', $torrent['ctime']);
			$torrent['filename'] = htmlspecialchars($torrent['filename']);
			$torrent['bt_downloaded'] = xbt_b2a($torrent['bt_downloaded']);
			$torrent['bt_uploaded'] = xbt_b2a($torrent['bt_uploaded']);
			$torrent['bt_last_announce'] = gmdate('Y-m-d H:s', $torrent['mtime']);
			if (!$torrent['completed'])
				unset($torrent['completed']);
			if (!$torrent['leechers'])
				unset($torrent['leechers']);
			if (!$torrent['replycount'])
				unset($torrent['replycount']);
			if (!$torrent['seeders'])
				unset($torrent['seeders']);
			$torrent['username'] = htmlspecialchars($torrent['username']);
			$bgclass = 'alt1';
			if (time() - $torrent['mtime'] > 27100)
				eval('$block_data[torrentbits_inactive] .= "' . fetch_template("memberinfo_torrentbit") . '";');
			else if ($left)
				eval('$block_data[torrentbits_leeching] .= "' . fetch_template("memberinfo_torrentbit") . '";');
			else
				eval('$block_data[torrentbits_seeding] .= "' . fetch_template("memberinfo_torrentbit") . '";');
		}
	}

	function xbt_memberlist_bit(&$userinfo)
	{
		xbt_format_uploaded_downloaded_ratio($userinfo['bt_uploaded'], $userinfo['bt_downloaded'], $userinfo['bt_ratio']);
	}

	function xbt_parse_templates()
	{
		global $style, $user, $vbulletin;
		eval('$style[\'css\'] .= "' . fetch_template('xbt_css') . '";');
		$user['uploaded'] = $vbulletin->userinfo['bt_uploaded'];
		$user['downloaded'] = $vbulletin->userinfo['bt_downloaded'];
		xbt_format_uploaded_downloaded_ratio($user['uploaded'], $user['downloaded'], $user['ratio']);
	}

	function xbt_postbit_attachment(&$attachment)
	{
		global $stylevar, $vbulletin, $xbt_config;
		$bt_size = $attachment['bt_size'];
		if (isset($attachment['bt_size']))
			$attachment['bt_size'] = xbt_b2a($attachment['bt_size']);
		$attachment['download_target'] = $xbt_config['attachment_download_banner'] ? 'target=_blank' : '';
		$attachment['bt_sub_files_rows'] = '';
		$sub_files = $vbulletin->db->query_read(sprintf("select name, size from xbt_sub_files where info_hash = '%s' order by name", addslashes($attachment['bt_info_hash'])));
		while ($sub_file = $vbulletin->db->fetch_array($sub_files))
		{
			$name = htmlspecialchars($sub_file['name']);
			$size = xbt_b2a($sub_file['size']);
			eval('$attachment[\'bt_sub_files_rows\'] .= "' . fetch_template('postbit_attachment_sub_files_row') . '";');
		}
		if ($attachment['bt_sub_files_rows'])
			eval('$attachment[\'bt_sub_files\'] = "' . fetch_template('postbit_attachment_sub_files') . '";');
		$attachment['bt_users_seeders'] = '';
		$attachment['bt_users_leechers'] = '';
		$attachment['bt_users_inactive'] = '';
		$users = $vbulletin->db->query_read(sprintf("select xfu.*, u.username name from xbt_files inner join xbt_files_users xfu using (fid) left join %suser u on uid = userid where info_hash = '%s' and (xfu.completed or xfu.downloaded or xfu.uploaded) order by name", TABLE_PREFIX, addslashes($attachment['bt_info_hash'])));
		while ($user = $vbulletin->db->fetch_array($users))
		{
			$uid = $user['uid'];
			$name = htmlspecialchars($user['name']);
			$announced = $user['announced'];
			$completed = $user['completed'];
			$downloaded = xbt_b2a($user['downloaded']);
			$done = $bt_size ? intval(($bt_size - $user['left']) * 100 / $bt_size) : '';
			$left = xbt_b2a($user['left']);
			$uploaded = xbt_b2a($user['uploaded']);
			$last_announce = gmdate('Y-m-d H:s', $user['mtime']);
			if (time() - $user['mtime'] > 2700)
				eval('$attachment[\'bt_users_inactive\'] .= "' . fetch_template('postbit_attachment_users_row') . '";');
			else if ($user['left'])
				eval('$attachment[\'bt_users_leechers\'] .= "' . fetch_template('postbit_attachment_users_row') . '";');
			else
				eval('$attachment[\'bt_users_seeders\'] .= "' . fetch_template('postbit_attachment_users_row') . '";');
		}
		if ($attachment['bt_users_seeders'] || $attachment['bt_users_leechers'] || $attachment['bt_users_inactive'])
			eval('$attachment[\'bt_users\'] = "' . fetch_template('postbit_attachment_users') . '";');
	}

	function xbt_postbit_display_complete(&$post)
	{
		xbt_format_uploaded_downloaded_ratio($post['bt_uploaded'], $post['bt_downloaded'], $post['bt_ratio']);
	}

	function xbt_showthread_query()
	{
		global $hook_query_fields;
		$hook_query_fields .= ", bt_uploaded, bt_downloaded";
	}

	function xbt_admin_usergroup_edit()
	{
		global $usergroup;
		print_table_header('BitTorrent');
		if (array_key_exists('bt_upload_multiplier', $usergroup))
			print_input_row('Upload Multiplier', 'usergroup[bt_upload_multiplier]', $usergroup['bt_upload_multiplier']);
		if (array_key_exists('bt_download_multiplier', $usergroup))
			print_input_row('Download Multiplier', 'usergroup[bt_download_multiplier]', $usergroup['bt_download_multiplier']);
		print_table_break();
	}

	function xbt_forumadmin_edit_form()
	{
		global $forum;
		print_table_header('BitTorrent');
		if (array_key_exists('bt_upload_multiplier', $forum))
			print_input_row('Upload Multiplier', 'forum[bt_upload_multiplier]', $forum['bt_upload_multiplier']);
		if (array_key_exists('bt_download_multiplier', $forum))
			print_input_row('Download Multiplier', 'forum[bt_download_multiplier]', $forum['bt_download_multiplier']);
	}

	function xbt_forumdata_start($dm)
	{
		$dm->validfields['bt_upload_multiplier'] = array(TYPE_INT, REQ_NO);
		$dm->validfields['bt_download_multiplier'] = array(TYPE_INT, REQ_NO);
	}

	function xbt_useradmin_edit_column1()
	{
		global $INNERTABLEWIDTH, $user;
		print_table_break('', $INNERTABLEWIDTH);
		print_table_header('BitTorrent');
		print_label_row('Reset Torrent Pass', '<input type="checkbox" name="bt_reset_torrent_pass" tabindex="1">');
		print_label_row('Uploaded', xbt_b2a($user['bt_uploaded']));
		print_label_row('Downloaded', xbt_b2a($user['bt_downloaded']));
		print_input_row('Increase Uploaded by (gb)', 'xbt_user[uploaded]', 0);
		print_input_row('Increase Downloaded by (gb)', 'xbt_user[downloaded]', 0);
	}

	function xbt_useradmin_update_save()
	{
		global $vbulletin;
		if ($_POST['bt_reset_torrent_pass'])
		{
			$vbulletin->db->hide_errors();
			$vbulletin->db->query_write(sprintf("update xbt_users set torrent_pass = null where uid = %d", $vbulletin->GPC['userid']));
			$vbulletin->db->show_errors();
			$vbulletin->db->query_write(sprintf("update xbt_users set torrent_pass_version = torrent_pass_version + 1 where uid = %d", $vbulletin->GPC['userid']));
		}
		$vbulletin->db->query_write(sprintf("update xbt_users set uploaded = uploaded + (%d << 30), downloaded = downloaded + (%d << 30) where uid = %d", $_POST['xbt_user']['uploaded'], $_POST['xbt_user']['downloaded'], $vbulletin->GPC['userid']));
		$vbulletin->db->query_write(sprintf("update %suser inner join xbt_users on userid = uid set bt_uploaded = uploaded, bt_downloaded = downloaded where uid = %d", TABLE_PREFIX, $vbulletin->GPC['userid']));
	}

	function xbt_userdata_start($dm)
	{
		$dm->validfields['bt_uploaded'] = array(TYPE_STR, REQ_NO);
		$dm->validfields['bt_downloaded'] = array(TYPE_STR, REQ_NO);
	}
