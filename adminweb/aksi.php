<?php
session_start();
include "../config/koneksi.php";
include "../config/library.php";
include "../config/fungsi_thumb.php";

$module=$_GET[module];
$act=$_GET[act];

// Menghapus data
if (isset($module) AND $act=='hapus'){
  mysql_query("DELETE FROM ".$module." WHERE id_".$module."='$_GET[id]'");
  header('location:media.php?module='.$module);
}

// Input kategori
elseif ($module=='kategori' AND $act=='input'){
  mysql_query("INSERT INTO kategori(nama_kategori) VALUES('$_POST[nama_kategori]')");
  header('location:media.php?module='.$module);
}

// Update kategori
elseif ($module=='kategori' AND $act=='update'){
  mysql_query("UPDATE kategori SET nama_kategori = '$_POST[nama_kategori]' WHERE id_kategori = '$_POST[id]'");
  header('location:media.php?module='.$module);
}


// Input reporter
elseif ($module=='reporter' AND $act=='input'){
  $pass=md5($_POST[password]);
  mysql_query("INSERT INTO reporter(id_reporter,
                                    password,
                                    nama_lengkap,
                                    email, 
                                    no_telp) 
	                       VALUES('$_POST[id_reporter]',
                                '$pass',
                                '$_POST[nama_lengkap]',
                                '$_POST[email]',
                                '$_POST[no_telp]')");
  header('location:media.php?module='.$module);
}

// Update reporter
elseif ($module=='reporter' AND $act=='update'){
  // Apabila password tidak diubah
  if (empty($_POST[password])) {
    mysql_query("UPDATE reporter SET id_reporter = '$_POST[id_reporter]',
                                 nama_lengkap    = '$_POST[nama_lengkap]',
                                 email           = '$_POST[email]',  
                                 no_telp         = '$_POST[no_telp]'  
                           WHERE id_reporter     = '$_POST[id]'");
  }
  // Apabila password diubah
  else{
    $pass=md5($_POST[password]);
    mysql_query("UPDATE reporter SET id_reporter = '$_POST[id_reporter]',
                                 password        = '$pass',
                                 nama_lengkap    = '$_POST[nama_lengkap]',
                                 email           = '$_POST[email]',  
                                 no_telp         = '$_POST[no_telp]'  
                           WHERE id_reporter     = '$_POST[id]'");
  }
  header('location:media.php?module='.$module);
}



// Input berita
elseif ($module=='berita' AND $act=='input'){

function SeoUrl($s) {
    $c = array (' ');
    $d = array ('-','/','\\',',','.','#',':',';','\'','"','[',']','{',
      '}',')','(','|','`','~','!','@','%','$','^','&','*','=','?','+');

    $s = str_replace($d, '', $s);
    $s = str_replace($c, '-', $s);
    return $s;
}

$judul_seo = SeoUrl($_POST['judul']);
$judul_kecil = strtolower($judul_seo);

  $lokasi_file    = $_FILES['fupload']['tmp_name'];
  $tipe_file      = $_FILES['fupload']['type'];
  $nama_file      = $_FILES['fupload']['name'];
  $acak           = rand(000000,999999);
  $nama_file_unik = $acak.$nama_file; 

  // Apabila ada gambar yang diupload
  if (!empty($lokasi_file)){
    UploadImage($nama_file_unik);
    mysql_query("INSERT INTO berita(judul,
                                    id_kategori,
                                    id_reporter,
                                    headline,
                                    isi_berita,
                                    judul_seo, 
                                    jam,
                                    tanggal,
                                    hari,
                                    gambar) 
                            VALUES('$_POST[judul]',
                                   '$_POST[kategori]',
                                   '$_SESSION[namauser]',
                                   '$_POST[headline]',
                                   '$_POST[isi_berita]',
                                   '$judul_kecil', 
                                   '$jam_sekarang',
                                   '$tgl_sekarang',
                                   '$hari_ini',
                                   '$nama_file_unik')");
  }
  else{
    mysql_query("INSERT INTO berita(judul,
                                    id_kategori,
                                    headline,
                                    isi_berita,
                                    id_reporter,
                                    jam,
                                    tanggal,
                                    hari) 
                            VALUES('$_POST[judul]',
                                   '$_POST[kategori]',
                                   '$_POST[headline]',
                                   '$_POST[isi_berita]',
                                   '$_SESSION[namauser]',
                                   '$jam_sekarang',
                                   '$tgl_sekarang',
                                   '$hari_ini')");
  }
  header('location:media.php?module='.$module);
}

// Update berita
elseif ($module=='berita' AND $act=='update'){
  $lokasi_file    = $_FILES['fupload']['tmp_name'];
  $tipe_file      = $_FILES['fupload']['type'];
  $nama_file      = $_FILES['fupload']['name'];
  $acak           = rand(000000,999999);
  $nama_file_unik = $acak.$nama_file; 

  // Apabila gambar tidak diganti
  if (empty($lokasi_file)){
    mysql_query("UPDATE berita SET judul       = '$_POST[judul]',
                                   id_kategori = '$_POST[kategori]',
                                   headline    = '$_POST[headline]',
                                   isi_berita  = '$_POST[isi_berita]'  
                             WHERE id_berita   = '$_POST[id]'");
  }
  else{
    UploadImage($nama_file_unik);
    mysql_query("UPDATE berita SET judul       = '$_POST[judul]',
                                   id_kategori = '$_POST[kategori]',
                                   headline    = '$_POST[headline]',
                                   isi_berita  = '$_POST[isi_berita]',
                                   gambar      = '$nama_file_unik'   
                             WHERE id_berita   = '$_POST[id]'");
  }
  header('location:media.php?module='.$module);
}
?>
