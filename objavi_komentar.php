<?php

require_once('include/init.php');

$dogadaj_id = $_POST['dogadaj_id'];
$tip_dogadaja = $_POST['tip_dogadaja'];
$tekst = $_POST['tekst'];
$datum = date('Y-m-d');
$query = $db->prepare("INSERT INTO komentari (dogadaj_id, tekst, tip_dogadaja, created) VALUES (?, ?, ?, ?)");

$query->bind_param('isss', $dogadaj_id, $tekst, $tip_dogadaja, $datum);
$query->execute();


echo json_encode(array('poruka' => 'Uspješno komentirano!'));
