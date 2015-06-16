<?php
session_start();
include "../../../config/koneksi.php";
include "../../../config/library.php";
include "../../../config/fungsi_thumb.php";
//include "../../../config/fungsi_seo.php";

$module=$_GET[module];
$act=$_GET[act];

// Hapus product
if ($module=='product' AND $act=='hapus'){
  mysql_query("DELETE FROM product WHERE id_product='$_GET[id]'");
  header('location:../../../adminweb/media.php?module='.$module);
}

// Input product
elseif ($module=='product' AND $act=='input'){
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

    mysql_query("INSERT INTO product(judul,
                                    judul_seo,
                                    id_kategori,
                                    username,
                                    isi_product,
                                    jam,
                                    tanggal,
                                    hari,
                                    tag, 
                                    gambar) 
                            VALUES('$_POST[judul]',
                                   '$judul_seo',
                                   '$_POST[kategori]',
                                   '$_SESSION[namauser]',
                                   '$_POST[isi_product]',
                                   '$jam_sekarang',
                                   '$tgl_sekarang',
                                   '$hari_ini',
                                   '$tag',
                                   '$nama_file_unik')");
  }
  else{
    mysql_query("INSERT INTO product(judul,
                                    judul_seo, 
                                    id_kategori,
                                    username,
                                    isi_product,
                                    jam,
                                    tanggal,
                                    hari) 
                            VALUES('$_POST[judul]',
                                   '$judul_seo',
                                   '$_POST[kategori]',
                                   '$_SESSION[namauser]',
                                   '$_POST[isi_product]',
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

// Update product
elseif ($module=='product' AND $act=='update'){
  $lokasi_file    = $_FILES['fupload']['tmp_name'];
  $tipe_file      = $_FILES['fupload']['type'];
  $nama_file      = $_FILES['fupload']['name'];
  $acak           = rand(1,99);
  $nama_file_unik = $acak.$nama_file; 

  //$tag=implode(',',$_POST[tag_seo]);

  //$judul_seo      = seo_title($_POST['judul']);

  // Apabila gambar tidak diganti
  if (empty($lokasi_file)){
    mysql_query("UPDATE product SET judul       = '$_POST[judul]',
                                   judul_seo   = '$judul_seo', 
                                   id_kategori = '$_POST[kategori]',
                                   tag         = '$tag',
                                   isi_product  = '$_POST[isi_product]'  
                             WHERE id_product   = '$_POST[id]'");
  }
  else{
    UploadImage($nama_file_unik);
    mysql_query("UPDATE product SET judul       = '$_POST[judul]',
                                   judul_seo   = '$judul_seo', 
                                   id_kategori = '$_POST[kategori]',
                                   tag         = '$tag',
                                   isi_product  = '$_POST[isi_product]',
                                   gambar      = '$nama_file_unik'   
                             WHERE id_product   = '$_POST[id]'");
  }
  header('location:../../../adminweb/media.php?module='.$module);
}
?>
