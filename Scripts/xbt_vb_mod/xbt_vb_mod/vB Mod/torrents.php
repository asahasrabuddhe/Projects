<?php
// ####################### SET PHP ENVIRONMENT ###########################
error_reporting(E_ALL & ~E_NOTICE);

// #################### DEFINE IMPORTANT CONSTANTS #######################
define('NO_REGISTER_GLOBALS', 1);
define('THIS_SCRIPT', 'torrents');

// ################### PRE-CACHE TEMPLATES AND DATA ######################

// get special data templates from the datastore
$specialtemplates = array(
);

// pre-cache templates used by all actions
$globaltemplates = array(
	'torrents',
	'torrents_torrentbit',
	'tracker_stats',
);

// pre-cache templates used by specific actions
$actiontemplates = array();

// ######################### REQUIRE BACK-END ############################
require_once('./global.php');
require_once('./includes/functions_bigthree.php');
require_once('./includes/xbt_functions.php');

function html_option($value, $content, $selected_value)
{
	return sprintf('<option%s value="%d">%s</option>', $value == $selected_value ? " selected" : "", $value, $content);
}

// #######################################################################
// ######################## START MAIN SCRIPT ############################
// #######################################################################

$exclude_forums = '0';
$forumid = intval($_REQUEST['f']);
$pagenumber = max(1, intval($_REQUEST['page']));
$perpage = 50;
$search_text = trim($_REQUEST['search_text']);
$sort = intval($_REQUEST['sort']);
$userid = intval($_REQUEST['u']);
if (0)
{
        $torrents = $db->query_read(sprintf("
                select a.attachmentid, a.bt_name, a.bt_size, a.bt_tracker, f.forumid, f.title, p.postid, t.replycount, t.threadid, t.title thread_title, u.userid, u.username,
                        xf.ctime, xf.leechers, xf.seeders, xf.completed
                from xbt_files xf
                        inner join %sattachment a on a.bt_info_hash = xf.info_hash
                        inner join %spost p using (postid)
                        inner join %sthread t using (threadid)
                        inner join %suser u on p.userid = u.userid
                        inner join %sforum f on t.forumid = f.forumid
                        inner join xbt_files_users xfu on xf.fid = xfu.fid
                where xfu.uid = %d and not xf.seeders and xf.leechers and not xfu.left
                order by xf.fid desc
                limit 10
        ", TABLE_PREFIX, TABLE_PREFIX, TABLE_PREFIX, TABLE_PREFIX, TABLE_PREFIX, $vbulletin->userinfo['userid']));
        $torrentbits0 = '';
        while ($torrent = $db->fetch_array($torrents))
        {
                $download_target = $xbt_config['attachment_download_banner'] ? 'target=_blank' : '';
                $torrent['bt_name'] = htmlspecialchars($torrent[1 ? 'bt_name' : 'thread_title']);
                $torrent['bt_size'] = xbt_b2a($torrent['bt_size']);
                $torrent['ctime'] = gmdate('Y-m-d H:s', $torrent['ctime']);
                $torrent['filename'] = htmlspecialchars($torrent['filename']);
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
                eval('$torrentbits0 .= "' . fetch_template("torrents_torrentbit") . '";');
        }
}
if (1)
{
	$forums1 = $db->query(sprintf("
		select f.forumid, f.title, f.parentid
		from %sforum f
		where f.forumid not in (%s)
	", TABLE_PREFIX, $exclude_forums));
	$forums = array();
	while ($forum = $db->fetch_array($forums1))
		$forums[$forum['forumid']] = $forum;

	function enable_forum($forum_id, &$forums)
	{
		if (!isset($forums[$forum_id]) || isset($forums[$forum_id]['show']))
			return;
		$forums[$forum_id]['show'] = true;
		enable_forum($forums[$forum_id]['parentid'], $forums);
	}

	function do_forum($forum_id, $forums, $indent)
	{
		$d = '';
		foreach ($forums as $forum)
		{
			if ($forum['parentid'] != $forum_id || !isset($forum['show']))
				continue;
			$d .= html_option($forum['forumid'], str_repeat('&nbsp;&nbsp;&nbsp;&nbsp;', $indent) . $forum['title'], $GLOBALS['forumid']);
			$d .= do_forum($forum['forumid'], $forums, $indent + 1);
		}
		return $d;
	}

	$categories = $db->query(sprintf("
		select distinct forumid
		from %sthread
			inner join %spost using (threadid)
			inner join %sattachment a using (postid)
		where forumid not in (%s) and a.bt_info_hash is not null
	", TABLE_PREFIX, TABLE_PREFIX, TABLE_PREFIX, $exclude_forums));
	while ($category = $db->fetch_array($categories))
	{
		enable_forum($category['forumid'], $forums);
	}
	$categorybits = '<option value="">All</option>' . do_forum(-1, $forums, 0);
}
else
{
	$categories = $db->query_read(sprintf("
		select distinct f.forumid, f.title
		from %sforum f
			inner join %sthread using (forumid)
			inner join %spost using (threadid)
			inner join %sattachment a using (postid)
		where forumid not in (%s) and a.bt_info_hash is not null
		order by title
	", TABLE_PREFIX, TABLE_PREFIX, TABLE_PREFIX, TABLE_PREFIX, $exclude_forums));
	$categorybits = '<option value="">All</option>';
	while ($category = $db->fetch_array($categories))
	{
		$categorybits .= html_option($category['forumid'], $category['title'], $forumid);
	}
}
$sortbits = '';
$sortbits .= html_option(8, 'Category', $sort);
$sortbits .= html_option(0, 'Date', $sort);
$sortbits .= html_option(1, 'Downloaded', $sort);
$sortbits .= html_option(2, 'Leechers', $sort);
$sortbits .= html_option(3, 'Name', $sort);
$sortbits .= html_option(4, 'Peers', $sort);
$sortbits .= html_option(5, 'Seeders', $sort);
$sortbits .= html_option(6, 'Size', $sort);
$sortbits .= html_option(7, 'User', $sort);
switch ($sort)
{
case 0:
	$order = "fid desc";
	break;
case 1:
	$order = "completed desc";
	break;
case 2:
	$order = "leechers desc";
	break;
case 3:
	$order = "filename";
	break;
case 4:
	$order = "seeders desc";
	break;
case 5:
	$order = "seeders desc";
	break;
case 6:
	$order = "bt_size desc";
	break;
case 7:
	$order = "u.username";
	break;
case 8:
	$order = "t.forumid";
	break;
case 9:
	$order = "t.replycount desc";
	break;
default:
	$order = "fid desc";
}
$where = sprintf(' and t.forumid not in (%s)', $exclude_forums);
if ($forumid)
	$where .= sprintf(" and t.forumid = %d", $forumid);
if ($userid)
	$where .= sprintf(" and a.userid = %d", $userid);
if (strlen($search_text))
	$where .= sprintf(" and locate('%s', a.bt_name)", addslashes($search_text));
$row_count = $db->query_first(sprintf("
	select count(*) c
	from %sattachment a
		inner join %spost p using (postid)
		inner join %sthread t using (threadid)
	where a.bt_info_hash is not null%s
", TABLE_PREFIX, TABLE_PREFIX, TABLE_PREFIX, $where));
$row_count = $row_count['c'];
$torrents = $db->query_read(sprintf("
	select a.attachmentid, a.bt_name, a.bt_size, a.bt_tracker, f.forumid, f.title, p.postid, t.replycount, t.threadid, t.title thread_title, u.userid, u.username,
		xf.ctime, xf.leechers, xf.seeders, xf.completed
	from xbt_files xf
		inner join %sattachment a on a.bt_info_hash = xf.info_hash
		inner join %spost p using (postid)
		inner join %sthread t using (threadid)
		inner join %suser u on p.userid = u.userid
		inner join %sforum f on t.forumid = f.forumid
	where 1%s
	order by %s
	limit %d, %d
", TABLE_PREFIX, TABLE_PREFIX, TABLE_PREFIX, TABLE_PREFIX, TABLE_PREFIX, $where, $order, ($pagenumber - 1) * $perpage, $perpage));
$torrentbits = '';
while ($torrent = $db->fetch_array($torrents))
{
	$download_target = $xbt_config['attachment_download_banner'] ? 'target=_blank' : '';
	$torrent['bt_name'] = htmlspecialchars($torrent[1 ? 'bt_name' : 'thread_title']);
	$torrent['bt_size'] = xbt_b2a($torrent['bt_size']);
	$torrent['ctime'] = gmdate('Y-m-d H:s', $torrent['ctime']);
	$torrent['filename'] = htmlspecialchars($torrent['filename']);
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
	eval('$torrentbits .= "' . fetch_template("torrents_torrentbit") . '";');
}
$navbits = array(
	'torrents.php' . $vbulletin->session->vars['sessionurl_q'] => 'Torrents'
);
$navbits = construct_navbits($navbits);
$pagenav = construct_page_nav($pagenumber, $perpage, $row_count, sprintf("?f=%d&amp;search_text=%s&amp;sort=%d&amp;u=%d", $forumid, urlencode($search_text), $sort, $userid));
$tracker_stats = xbt_get_tracker_stats();
eval('$navbar = "' . fetch_template('navbar') . '";');
eval('$tracker_stats_bit = "' . fetch_template('tracker_stats') . '";');
eval('print_output("' . fetch_template('torrents') . '");');
