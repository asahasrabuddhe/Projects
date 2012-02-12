<?php
	require_once(dirname(__FILE__) . '/includes/config.php');
	require_once(dirname(__FILE__) . '/includes/xbt_functions.php');

	db_connect();
	xbt_cron();
