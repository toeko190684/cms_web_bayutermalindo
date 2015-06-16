<?php
echo "<h2>Popular</h2>";
$terkini= mysql_query("SELECT * FROM berita ORDER BY dibaca DESC LIMIT 4");		 
while($t=mysql_fetch_array($terkini))
{
	echo "<a href=?module=detailberita&id=$t[id_berita]><span class=kategori>>>".$t[judul]."</a><br />";
}
?>