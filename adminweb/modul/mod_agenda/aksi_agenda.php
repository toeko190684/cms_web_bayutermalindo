<?php
session_start();
include "../../../config/koneksi.php";

$module=$_GET[module];
$act=$_GET[act];

// Hapus agenda
if ($module=='agenda' AND $act=='hapus'){
  mysql_query("DELETE FROM agenda WHERE id_agenda='$_GET[id]'");
  header('location:../../../adminweb/media.php?module='.$module);
}

// Input agenda
elseif ($module=='agenda' AND $act=='input'){
  $mulai=sprintf("%02d%02d%02d",$_POST[thn_mulai],$_POST[bln_mulai],$_POST[tgl_mulai]);
  $selesai=sprintf("%02d%02d%02d",$_POST[thn_selesai],$_POST[bln_selesai],$_POST[tgl_selesai]);
  
  mysql_query("INSERT INTO agenda(tema,
                                  isi_agenda,
                                  tempat,
                                  tgl_mulai,
                                  tgl_selesai,
                                  tgl_posting,
                                  pengirim, 
                                  username) 
					                VALUES('$_POST[tema]',
                                 '$_POST[isi_agenda]',
                                 '$_POST[tempat]',
                                 '$mulai',
                                 '$selesai',
                                 '$tgl_sekarang',
                                 '$_POST[pengirim]',
                                 '$_SESSION[namauser]')");
  header('location:../../../adminweb/media.php?module='.$module);
}

// Update agenda
elseif ($module=='agenda' AND $act=='update'){
  $mulai=sprintf("%02d%02d%02d",$_POST[thn_mulai],$_POST[bln_mulai],$_POST[tgl_mulai]);
  $selesai=sprintf("%02d%02d%02d",$_POST[thn_selesai],$_POST[bln_selesai],$_POST[tgl_selesai]);

  mysql_query("UPDATE agenda SET tema        = '$_POST[tema]',
                                 isi_agenda  = '$_POST[isi_agenda]',
                                 tgl_mulai   = '$mulai',
                                 tgl_selesai = '$selesai',
                                 tempat      = '$_POST[tempat]',  
                                 pengirim    = '$_POST[pengirim]'  
                           WHERE id_agenda   = '$_POST[id]'");
  header('location:../../../adminweb/media.php?module='.$module);
}
?>
