<?php

/*ini_set('display_errors',1);
ini_set('display_startup_errors',1);
error_reporting(-1);
*/
session_start();

$_SESSION['dozvola'] = isset($_SESSION['dozvola']) ? $_SESSION['dozvola'] : 0;

if($_SESSION['dozvola'] !== 1){
	header('Location login.php');
}

require_once('db.php');
