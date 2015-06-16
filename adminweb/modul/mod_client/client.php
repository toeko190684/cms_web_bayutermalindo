<?php
$aksi="modul/mod_client/aksi_client.php";
switch($_GET[act]){
  // Tampil client
  default:
    echo "<h2>client</h2>
          <input type=button value='Tambah client' 
          onclick=\"window.location.href='?module=client&act=tambahclient';\">
          <table>
          <tr><th>no</th><th>nama client</th><th>Jenis</th><th>aksi</th></tr>"; 
    $tampil=mysql_query("SELECT * FROM client ORDER BY id_client DESC");
    $no=1;
    while ($r=mysql_fetch_array($tampil)){
       echo "<tr><td>$no</td>
             <td>$r[nama_client]</td>
			 <td>$r[client_seo]</td>
             <td><a href=?module=client&act=editclient&id=$r[id_client]>Edit</a> | 
	               <a href=$aksi?module=client&act=hapus&id=$r[id_client]>Hapus</a>
             </td></tr>";
      $no++;
    }
    echo "</table>";
    break;
  
  // Form Tambah client
  case "tambahclient":
    echo "<h2>Tambah client</h2>
          <form method=POST action='$aksi?module=client&act=input'>
          <table>
          <tr><td>Nama client</td><td> : <input type=text name='nama_client'></td></tr>
		  <tr><td>Jenis Client</td><td> : <input type=text name='jenis_client'></td></tr>
          <tr><td colspan=2><input type=submit name=submit value=Simpan>
                            <input type=button value=Batal onclick=self.history.back()></td></tr>
          </table></form>";
     break;
  
  // Form Edit client  
  case "editclient":
    $edit=mysql_query("SELECT * FROM client WHERE id_client='$_GET[id]'");
    $r=mysql_fetch_array($edit);

    echo "<h2>Edit client</h2>
          <form method=POST action=$aksi?module=client&act=update>
          <input type=hidden name=id value='$r[id_client]'>
          <table>
          <tr><td>Nama client</td><td> : <input type=text name='nama_client' value='$r[nama_client]'></td></tr>
		  <tr><td>Jenis</td><td> : <input type=text name='jenis_client' value='$r[client_seo]'></td></tr>
          <tr><td colspan=2><input type=submit value=Update>
                            <input type=button value=Batal onclick=self.history.back()></td></tr>
          </table></form>";
    break;  
}
?>
