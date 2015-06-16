<?php
session_start();
include "../../../config/koneksi.php";

$module=$_GET[module];
$act=$_GET[act];

// Hapus client
if ($module=='client' AND $act=='hapus'){
  mysql_query("DELETE FROM client WHERE id_client='$_GET[id]'");
  header('location:../../../adminweb/media.php?module='.$module);
}

// Input client
elseif ($module=='client' AND $act=='input'){
  mysql_query("INSERT INTO client(nama_client,client_seo) VALUES('$_POST[nama_client]','$_POST[jenis_client]')");
  header('location:../../../adminweb/media.php?module='.$module);
}

// Update client
elseif ($module=='client' AND $act=='update'){
  mysql_query("UPDATE client SET nama_client = '$_POST[nama_client]',client_seo ='$_POST[jenis_client]' WHERE id_client = '$_POST[id]'");
  header('location:../../../adminweb/media.php?module='.$module);
}
?>
