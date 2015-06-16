<?php
// Form Pencarian
echo "<img src=images/search.jpg><br />
      <form method=POST action='?module=hasilcari'>    
        <input name=kata type=text size=20 />
        <input type=submit value=Cari />
      </form>
      <hr color=#FCEDC7 noshade=noshade>";

// Menu Kategori
echo "<br /><img src='images/mainmenu.jpg'><br /><br />";

echo "<span class=kategori>&bull; <a href='index.php'> Home</a></span><br />";

$kategori=mysql_query("select * from kategori order by nama_kategori");
while($k=mysql_fetch_array($kategori)){
  echo "<span class=kategori>&bull; <a href='?module=detailkategori&id=$k[id_kategori]'> $k[nama_kategori]</a></span><br />";
}
echo "<br /><hr color=#FCEDC7 noshade=noshade>";

// Agenda
echo "<br /><img src=images/agenda.jpg><br /><br />";
$agenda=mysql_query("SELECT * FROM agenda ORDER BY id_agenda DESC");

while($a=mysql_fetch_array($agenda)){
	$tgl_agenda = tgl_indo($a[tgl_mulai]);
  echo "<span class=date>&bull; $tgl_agenda </a></span><br />";
  echo "<span class=agenda><a href='?module=detailagenda&id=$a[id_agenda]'> $a[tema]</a></span><br /><br />";
}
echo "<hr color=#FCEDC7 noshade=noshade><br />";

// Banner
$banner=mysql_query("SELECT * FROM banner 
                    ORDER BY id_banner DESC");
while($b=mysql_fetch_array($banner)){
  echo "<center><a href=$b[url]><img src='foto_banner/$b[gambar]' border=0></a></center><br /><br />";
}

?>
