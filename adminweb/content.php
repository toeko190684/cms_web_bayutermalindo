<?php
include "../config/koneksi.php";
include "../config/library.php";
include "../config/fungsi_indotgl.php";
include "../config/fungsi_combo_admin.php";
include "../config/class_paging.php";

// Bagian Home
if ($_GET[module]=='home'){
  echo "<h2>Selamat Datang</h2>
          <p>Hai <b>$_SESSION[namalengkap]</b>, selamat datang di halaman Administrator website Detikcom.<br> Silahkan klik menu pilihan yang berada 
          di sebelah kiri untuk mengelola content website. </p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p align=right>Login : $hari_ini, ";
  echo tgl_indo(date("Y m d")); 
  echo " | "; 
  echo date("H:i:s");
  echo " WIB</p>";
}

// Bagian User
elseif ($_GET[module]=='user'){
  include "modul/mod_users/users.php";
}

// Bagian Modul
elseif ($_GET[module]=='modul'){
  include "modul/mod_modul/modul.php";
}

// Bagian Kategori
elseif ($_GET[module]=='kategori'){
  include "modul/mod_kategori/kategori.php";
}

// Bagian Berita
elseif ($_GET[module]=='berita'){
  include "modul/mod_berita/berita.php";
}

// Bagian profil
elseif ($_GET[module]=='profil'){
  include "modul/mod_profil/profil.php";
}

// Bagian produk
elseif ($_GET[module]=='product'){
  include "modul/mod_product/product.php";
}


// Bagian Tag
elseif ($_GET[module]=='tag'){
  include "modul/mod_tag/tag.php";
}

// Bagian Client
elseif ($_GET[module]=='client'){
  include "modul/mod_client/client.php";
}

// Bagian Download
elseif ($_GET[module]=='download'){
  include "modul/mod_download/download.php";
}

// Apabila modul tidak ditemukan
else{
  echo "<p><b>MODUL BELUM ADA ATAU BELUM LENGKAP</b></p>";
}
?>
