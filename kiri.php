<?php
include "config/koneksi.php";
include "config/fungsi_indotgl.php";
//modul profil
if ($_GET[module]=='profil')
{
	$sql=mysql_query("select  * from profil");
	$cari=mysql_fetch_array($sql);
	echo "<h2>$cari[judul]</h2>";
	echo "$cari[isi_profil]";
}
//modul home
elseif ($_GET[module]=='home')
{
	$sql=mysql_query("select  * from profil where id_profil=82");
	$cari=mysql_fetch_array($sql);
	echo "<h2>$cari[judul]</h2>";
	echo "$cari[isi_profil]";
}
//modul product
elseif ($_GET[module]=='product')
{
	echo "<h2>Produk</h2>";
	$sql = mysql_query("select id_kategori,nama_kategori from kategori where id_kategori in (select distinct id_kategori from product) LIMIT 0, 30");
	while($r=mysql_fetch_array($sql)) 
	{
		echo "<a href='?module=kategoriproduct&id=$r[id_kategori]'>".$r['nama_kategori']."</a><br>";
	}
}
//modul client
elseif ($_GET[module]=='client')
{
	echo "<h2>Client</h2><ol>";
	$sql=mysql_query("select  distinct client_seo from client");
	echo "<table>";
	$a ='a';
	echo "<ol type=a>";
	while($row=mysql_fetch_array($sql))
	{
		echo "<tr><td valign=top>".strtoupper($row[client_seo])."</td><td><ul>";
		$client = mysql_query("select * from client where client_seo='$row[client_seo]'");
		while($rclient = mysql_fetch_array($client))
		{
		  echo "<li>$rclient[nama_client]</li>";
		}
		echo "</ul></td></tr>";
	}
	echo "</ol></table>";
}
//modul contact us
elseif ($_GET[module]=='contactus')
{
	include "contactus.php";
}
//modul email terkirim
elseif ($_GET[module]=='email_terkirim')
{
	echo "Pesan anda sudah terkirim,<br>Kami akan segera merespon pesan anda thanks.!";
}
//modul download
elseif ($_GET[module]=='download')
{
	echo "<h2>Download Brosur</h2>";
	$sql= mysql_query("SELECT * FROM download");		 
	while($t=mysql_fetch_array($sql))
	{
		echo "<a href='images/$t[nama_file]'>$t[judul]</a><br />";
	}
}
//kategori product
elseif ($_GET[module]=='kategoriproduct')
{
	$sql =mysql_query("select * from kategori where id_kategori=$_GET[id]");
	$p =mysql_fetch_array($sql);
	echo "<h2>$p[nama_kategori]</h2><Br>";
	$detail=mysql_query("SELECT * FROM product WHERE id_kategori =$_GET[id]");
	while ($r=mysql_fetch_array($detail))
	{
		echo "<a href=?module=detailproduct&id=$r[id_product]><span class=listcontent>$r[judul]</span></a><br>";
	}
}
// Modul detail product
elseif ($_GET[module]=='detailproduct'){
	$detail=mysql_query("SELECT * FROM product WHERE id_product='$_GET[id]'");
	$d   = mysql_fetch_array($detail);
	echo "<span class=judul>$d[judul]</span><br />";
	// Apabila ada gambar dalam berita, tampilkan   
 	if ($d[gambar]!=''){
		echo "<span class=image><img src='foto_product/$d[gambar]' border=0></span>";
	}
 	$isi_berita=nl2br($d[isi_product]); // membuat paragraf pada isi berita
	echo "$isi_berita";	 		  
  // Apabila detail berita dilihat, maka tambahkan berapa kali dibacanya
  mysql_query("UPDATE berita SET dibaca=$d[dibaca]+1 
              WHERE id_berita='$_GET[id]'");
}

// Modul detail berita
elseif ($_GET[module]=='detailberita'){
	$detail=mysql_query("SELECT * FROM berita WHERE id_berita='$_GET[id]'");
	$d   = mysql_fetch_array($detail);
	$tgl = tgl_indo($d[tanggal]);
	echo "<span class=date>$d[hari], $tgl - $d[jam] WIB</span><br />";
	echo "<span class=judul>$d[judul]</span><br />";
	echo "<span class=posting>Diposting oleh : <b>$d[nama_lengkap]</b> - Dibaca: <b>$d[dibaca]</b> kali</span><br /><br />";
  // Apabila ada gambar dalam berita, tampilkan   
 	if ($d[gambar]!=''){
		echo "<span class=image><img src='foto_berita/$d[gambar]' border=0></span>";
	}
 	//$isi_berita=nl2br($d[isi_berita]); // membuat paragraf pada isi berita
	echo "$d[isi_berita]";	 		  
  // Apabila detail berita dilihat, maka tambahkan berapa kali dibacanya
  mysql_query("UPDATE berita SET dibaca=$d[dibaca]+1 
              WHERE id_berita='$_GET[id]'");
}
echo "<Br><Br><br><br>";
?>
