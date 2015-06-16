<?php
$server = "localhost";
$username = "bayuterm_admin";
$password = "b4y&ut32";
$database = "bayuterm_dbkabar";

// Koneksi dan memilih database di server
mysql_connect($server,$username,$password) or die("Koneksi gagal");
mysql_select_db($database) or die("Database tidak bisa dibuka");
?>
