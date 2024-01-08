<?php
$hostname = 'localhost';
$username = 'root';
$password = '';
$dbname = 'recipes_db';

$link = new mysqli($hostname, $username, $password, $dbname);

if ($link->connect_errno) {
  printf('failed database connect', $link->connect_errno);
  exit();
}
?>
