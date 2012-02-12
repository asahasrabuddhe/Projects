<?php
// ####################### SET PHP ENVIRONMENT ###########################
error_reporting(E_ALL & ~E_NOTICE);

// #################### DEFINE IMPORTANT CONSTANTS #######################
define('NO_REGISTER_GLOBALS', 1);
define('THIS_SCRIPT', 'top_lists');

// ################### PRE-CACHE TEMPLATES AND DATA ######################

// get special data templates from the datastore
$specialtemplates = array(
);

// pre-cache templates used by all actions
$globaltemplates = array(
	'top_lists',
	'top_lists_table_row',
	'tracker_stats',
);

// pre-cache templates used by specific actions
$actiontemplates = array();

// ######################### REQUIRE BACK-END ############################
require_once('./global.php');
require_once('./includes/functions_bigthree.php');
require_once('./includes/xbt_functions.php');

function do_table($name)
{
	global $db;
	$users = $db->query_first(sprintf("select value from xbt_cache where name = '%s'", $name));
	$users = unserialize($users['value']);
	$d = '';
	foreach ($users as $user)
	{
		global $bgclass;
		if ($user['downloaded'])
			$user['ratio'] = sprintf('%.2f', $user['uploaded'] / $user['downloaded']);
		else
			unset($user['ratio']);
		if ($user['downloaded'])
			$user['downloaded'] = xbt_b2a($user['downloaded']);
		else
			unset($user['downloaded']);
		if ($user['uploaded'])
			$user['uploaded'] = xbt_b2a($user['uploaded']);
		else
			unset($user['uploaded']);
		if (!$user['replycount'])
			unset($user['replycount']);
		$user['username'] = htmlspecialchars($user['username']);
		$bgclass = 'alt1';
		eval('$d .= "' . fetch_template("top_lists_table_row") . '";');
	}
	return $d;
}

// #######################################################################
// ######################## START MAIN SCRIPT ############################
// #######################################################################

$navbits = array(
	'top_lists.php' . $vbulletin->session->vars['sessionurl_q'] => 'Top Lists'
);
$navbits = construct_navbits($navbits);
$top_uploaders = do_table('top_uploaders');
$top_downloaders = do_table('top_downloaders');
$top_seeders = do_table('top_seeders');
$top_leechers = do_table('top_leechers');
$top_posters = do_table('top_posters');
$tracker_stats = xbt_get_tracker_stats();
eval('$navbar = "' . fetch_template('navbar') . '";');
eval('$tracker_stats_bit = "' . fetch_template('tracker_stats') . '";');
eval('print_output("' . fetch_template('top_lists') . '");');
