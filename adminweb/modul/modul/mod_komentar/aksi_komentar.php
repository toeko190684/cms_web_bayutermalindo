<?php
session_start();
include "../../../config/koneksi.php";

$module=$_GET[module];
$act=$_GET[act];

// Hapus komentar
if ($module=='komentar' AND $act=='hapus'){
  mysql_query("DELETE FROM komentar WHERE id_komentar='$_GET[id]'");
  header('location:../../../adminweb/media.php?module='.$module);
}

// Update komentar
elseif ($module=='komentar' AND $act=='update'){
  mysql_query("UPDATE komentar SET nama_komentar = '$_POST[nama_komentar]',
                                   isi_komentar  = '$_POST[isi_komentar]', 
                                   aktif         = '$_POST[aktif]'
                             WHERE id_komentar = '$_POST[id]'");
  header('location:../../../adminweb/media.php?module='.$module);
}
?>