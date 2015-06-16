<?php
echo "<h2>Download Brosur</h2>";
$sql= mysql_query("SELECT * FROM download limit 4");		 
while($t=mysql_fetch_array($sql))
{
	echo "<a href='images/$t[nama_file]'><span class=kategori>>>".$t[judul]."</span></a><br />";
}
?>