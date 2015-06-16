<?php
session_start();
include "../../../config/koneksi.php";
include "../../../config/library.php";
include "../../../config/fungsi_thumb.php";
//include "../../../config/fungsi_seo.php";

$module=$_GET[module];
$act=$_GET[act];

// Hapus profil
if ($module=='profil' AND $act=='hapus'){
  mysql_query("DELETE FROM profil WHERE id_profil='$_GET[id]'");
  header('location:../../../adminweb/media.php?module='.$module);
}

// Input profil
elseif ($module=='profil' AND $act=='input'){
  $lokasi_file    = $_FILES['fupload']['tmp_name'];
  $tipe_file      = $_FILES['fupload']['type'];
  $nama_file      = $_FILES['fupload']['name'];
  $acak           = rand(1,99);
  $nama_file_unik = $acak.$nama_file; 

  $tag_seo = $_POST[tag_seo];
  //$tag=implode(',',$tag_seo);

  //$judul_seo      = seo_title($_POST['judul']);

  // Apabila ada gambar yang diupload
  if (!empty($lokasi_file)){
    UploadImage($nama_file_unik);

    mysql_query("INSERT INTO profil(judul,
                                    judul_seo,
                                    id_kategori,
                                    username,
                                    isi_profil,
                                    jam,
                                    tanggal,
                                    hari,
                                    tag, 
                                    gambar) 
                            VALUES('$_POST[judul]',
                                   '$judul_seo',
                                   '$_POST[kategori]',
                                   '$_SESSION[namauser]',
                                   '$_POST[isi_profil]',
                                   '$jam_sekarang',
                                   '$tgl_sekarang',
                                   '$hari_ini',
                                   '$tag',
                                   '$nama_file_unik')");
  }
  else{
    mysql_query("INSERT INTO profil(judul,
                                    judul_seo, 
                                    id_kategori,
                                    username,
                                    isi_profil,
                                    jam,
                                    tanggal,
                                    hari) 
                            VALUES('$_POST[judul]',
                                   '$judul_seo',
                                   '$_POST[kategori]',
                                   '$_SESSION[namauser]',
                                   '$_POST[isi_profil]',
                                   '$jam_sekarang',
                                   '$tgl_sekarang',
                                   '$hari_ini')");
  }
  
  $jml=count($tag_seo);
  for($i=0;$i<$jml;$i++){
    mysql_query("UPDATE tag SET count=count+1 WHERE tag_seo='$tag_seo[$i]'");
  }
  header('location:../../../adminweb/media.php?module='.$module);
}

// Update profil
elseif ($module=='profil' AND $act=='update'){
  $lokasi_file    = $_FILES['fupload']['tmp_name'];
  $tipe_file      = $_FILES['fupload']['type'];
  $nama_file      = $_FILES['fupload']['name'];
  $acak           = rand(1,99);
  $nama_file_unik = $acak.$nama_file; 

  //$tag=implode(',',$_POST[tag_seo]);

  //$judul_seo      = seo_title($_POST['judul']);

  // Apabila gambar tidak diganti
  if (empty($lokasi_file)){
    mysql_query("UPDATE profil SET judul       = '$_POST[judul]',
                                   judul_seo   = '$judul_seo', 
                                   id_kategori = '$_POST[kategori]',
                                   tag         = '$tag',
                                   isi_profil  = '$_POST[isi_profil]'  
                             WHERE id_profil   = '$_POST[id]'");
  }
  else{
    UploadImage($nama_file_unik);
    mysql_query("UPDATE profil SET judul       = '$_POST[judul]',
                                   judul_seo   = '$judul_seo', 
                                   id_kategori = '$_POST[kategori]',
                                   tag         = '$tag',
                                   isi_profil  = '$_POST[isi_profil]',
                                   gambar      = '$nama_file_unik'   
                             WHERE id_profil   = '$_POST[id]'");
  }
  header('location:../../../adminweb/media.php?module='.$module);
}
?>
