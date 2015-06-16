<?php
include "config/koneksi.php";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>www.bayutermalindoutama.co.id</title>
	<meta name="robots" content="index, follow">
	<meta name="description" content="PT. Bayu Termalindo Utama adalah perusahaan yang menjual alat pemadam kebaran atau api, cctv ">
	<meta name="keywords" content="bayu termalindo utama, alat pemadam api,alat pemadam kebakaran, hydrant">
	<meta http-equiv="Copyright" content="att-sollutions">
	<meta name="author" content="toeko triyanto">
	<meta http-equiv="imagetoolbar" content="no">
	<meta name="language" content="Indonesia">
	<meta name="revisit-after" content="7">
	<meta name="webcrawlers" content="all">
	<meta name="rating" content="general">
	<meta name="spiders" content="all">
<link href="style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style8 {font-size: 12px; font-family: Arial;}
-->
</style>
</head>

<body>
<table width="1000" border="0" align="center" class="layout">
  <tr>
    <td colspan="2" bgcolor="#0033FF">&nbsp;</td>
  </tr>
  <tr>
    <td><img src="images/header.jpg" width="772" height="81" /></td>
    <td valign="top"><div align="right" class="menupojok"><a href="?module=download">Download</a> | <a href="?module=contactus">Contact</a> | <a href="?module=home">Home</a> </div></td>
  </tr>
  <tr>
    <td height="35" colspan="2" background="images/menu.jpg"><div align="center" id="menu"><a href="?module=home">Home</a> | <a href="?module=profil">Profile</a> | <a href="?module=product">Product</a> | <a href="?module=client">Client</a> | <a href="?module=contactus">Contact Us</a> </div></td>
  </tr>
  <tr>
    <td colspan="2" ><div align="center"><img src="images/header2.jpg" width="975" height="203" /></div></td>
  </tr>
  <tr>
    <td width="321"><img src="images/alamat.jpg" width="590" height="87" /></td>
    <td width="224" rowspan="2" valign="top"><br />
      <table width="200" border="0">
        <?php
			$sql = mysql_query("select id_kategori,nama_kategori from kategori where id_kategori in (select distinct id_kategori from product) LIMIT 0, 30");
			while($r=mysql_fetch_array($sql)) {
				echo "<tr><Td class=menukanan><a href='?module=kategoriproduct&id=$r[id_kategori]'><font color=#ff0000>".$r['nama_kategori']."</font></a></tr></td>";
			}
		?>
    </table><br />
	<table align="center"><tr><td align="center">Sales 1</td></tr>
	<tr><td>
	<div align="center"><a href="ymsgr:sendIM?rahayu_btu@yahoo.co.id"> <img src="http://opi.yahoo.com/online?u=rahayu_btu@yahoo.co.id&amp;m=g&amp;t=2&amp;l=us" width="114" height="20"/>
        </a></div>
	</td></tr>
	<tr><td align="center">Sales 2</td></tr>
	<tr><td>
	<div align="center"><a href="ymsgr:sendIM?neng_btu@yahoo.co.id"> <img src="http://opi.yahoo.com/online?u=neng_btu@yahoo.co.id&amp;m=g&amp;t=2&amp;l=us" width="109" height="22"/>
        </a></div>
	</td></tr>
	<tr><td align="center">Sales 3</td></tr>
	<tr><td>
	<div align="center"><a href="ymsgr:sendIM?priyadi08_btu@yahoo.co.id"> <img src="http://opi.yahoo.com/online?u=eml_yuk&amp;m=g&amp;t=2&amp;l=us" width="108"/>
        </a></div>
	</td></tr>
	</table>	<Br /><br /></td>
  </tr>
  
  <tr>
    <td valign="top" bgcolor="#FFFFFF"><div id="content">
		<?php include "kiri.php"; ?></div></td>
  </tr>
  <tr>
    <td colspan="2"><table width="974" border="0" align="center" bgcolor="#F3F3F3" class="tabelbawah">

      <tr>
        <td width="295"><div id="news"><?php include "latestnews.php"; ?></div></td>
        <td width="295" valign="top"><div id="news2"><?php include "download.php"; ?></div></td>
        <td width="322" valign="top"><div id="news"><?php include "popular.php"; ?></div></td>
      </tr>
    </table><br /></td>
  </tr>
  <tr>
    <td colspan="2" class="footer"><div align="center">
      <p><a href="?module=home">Home</a> | <a href="?module=profil">Profile</a> | <a href="?module=product">Product</a> | <a href="?module=client">Client</a> | <a href="?module=contactus">Contact Us</a></p>
      <p class="footer2">Copyright@2011 ummunaylashop.com All Right Reserved </p>
    </div></td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>
