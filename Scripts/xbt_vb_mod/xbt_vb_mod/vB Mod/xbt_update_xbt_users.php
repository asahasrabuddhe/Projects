<?php
	require_once('includes/config.php');
	require_once('includes/xbt_functions.php');

	db_connect();
	db_query(sprintf("update xbt_files inner join %sattachment on info_hash = bt_info_hash inner join %spost using (postid) inner join %sthread using (threadid) inner join %sforum using (forumid)
		set download_multiplier = bt_download_multiplier, upload_multiplier = bt_upload_multiplier, flags = flags | 2
		where download_multiplier != bt_download_multiplier or upload_multiplier != bt_upload_multiplier", TABLE_PREFIX, TABLE_PREFIX, TABLE_PREFIX, TABLE_PREFIX));
	// db_query(sprintf("update xbt_users inner join %suser on uid = userid inner join %susergroup ug using (usergroupid) set wait_time = bt_wait_time;", TABLE_PREFIX, TABLE_PREFIX));
	// db_query(sprintf("update xbt_users inner join %suser on uid = userid inner join %susergroup ug using (usergroupid) set download_multiplier = bt_download_multiplier, upload_multiplier = bt_upload_multiplier;", TABLE_PREFIX, TABLE_PREFIX));
	db_query(sprintf("update xbt_users set wait_time = 0"));
	// db_query(sprintf("update xbt_users inner join %suser on uid = userid set wait_time = %d where uploaded < 0.50 * downloaded and usergroupid not in (0)", TABLE_PREFIX, 48 * 60 * 60));
