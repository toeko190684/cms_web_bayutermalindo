<?php
echo "<h2>Latest News</h2>";
$terkini= mysql_query("SELECT * FROM berita ORDER BY id_berita DESC LIMIT 4");		 
while($t=mysql_fetch_array($terkini))
{
	echo "<a href=?module=detailberita&id=$t[id_berita]><span class=kategori>>>".$t[judul]."</span></a><br />";
}
?>