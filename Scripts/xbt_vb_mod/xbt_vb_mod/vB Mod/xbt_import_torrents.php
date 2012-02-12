<?php
set_time_limit(0);
$specialtemplates = array();
$globaltemplates = array();
$actiontemplates = array();
require_once('./global.php');
require_once('./includes/functions_bigthree.php');
require_once('./includes/functions_file.php');
require_once('./includes/xbt_functions.php');
// $rows = $db->query_write(sprintf("update %sattachment set bt_info_hash = null", TABLE_PREFIX));
$rows = $db->query_read(sprintf("select * from %sattachment where extension = 'torrent' and bt_info_hash is null", TABLE_PREFIX));
while ($row = $db->fetch_array($rows))
{
	printf('%d<br>', $row['attachmentid']);
	$dm->attachment['attachmentid'] = $row['attachmentid'];
	$dm->attachment['extension'] = $row['extension'];
	if ($vbulletin->options['attachfile'])
	{
		$attachpath = fetch_attachment_path($row['userid'], $row['attachmentid']);
		$dm->info['filedata'] = file_get_contents($attachpath);
	}
	else
		$dm->info['filedata'] = $row['filedata'];
	xbt_attachdata_postsave($dm);
}
?>
-