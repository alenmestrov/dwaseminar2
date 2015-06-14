<?php
$db = new mysqli("localhost", "root", "root", "seminar2");
if ($db->connect_errno) {
	die($db->connect_error);
}
