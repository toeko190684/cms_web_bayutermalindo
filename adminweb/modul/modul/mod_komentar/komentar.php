<?php
$aksi="modul/mod_komentar/aksi_komentar.php";
switch($_GET[act]){
  // Tampil Komentar
  default:
    echo "<h2>Komentar</h2>
          <table>
          <tr><th>no</th><th>nama</th><th>komentar</th><th>aksi</th></tr>";
    $tampil=mysql_query("SELECT * FROM komentar ORDER BY id_komentar DESC");
    $no=1;
    while ($r=mysql_fetch_array($tampil)){
      echo "<tr><td>$no</td>
                <td width=100>$r[nama_komentar]</td>
                <td width=300>$r[isi_komentar]</td>
                <td><a href=?module=komentar&act=editkomentar&id=$r[id_komentar]>Edit</a> | 
	                  <a href=$aksi?module=komentar&act=hapus&id=$r[id_komentar]>Hapus</a>
		        </tr>";
    $no++;
    }
    echo "</table>";
    break;
  
  case "editkomentar":
    $edit = mysql_query("SELECT * FROM komentar WHERE id_komentar='$_GET[id]'");
    $r    = mysql_fetch_array($edit);
    $isi_komentar = nl2br($r[isi_komentar]);

    echo "<h2>Edit Komentar</h2>
          <form method=POST enctype='multipart/form-data' action=$aksi?module=komentar&act=update>
          <input type=hidden name=id value=$r[id_komentar]>
          <table>
          <tr><td>Nama</td><td>     : <input type=text name='nama_komentar' size=30 value='$r[nama_komentar]'></td></tr>
          <tr><td>Isi Komentar</td><td> <textarea name=isi_komentar style='width: 300px; height: 100px;'>$isi_komentar</textarea></td></tr>";

    if ($r[aktif]=='Y'){
      echo "<tr><td>Aktif</td> <td> : <input type=radio name='aktif' value='Y' checked>Y  
                                      <input type=radio name='aktif' value='N'> N</td></tr>";
    }
    else{
      echo "<tr><td>Aktif</td> <td> : <input type=radio name='aktif' value='Y'>Y  
                                      <input type=radio name='aktif' value='N' checked>N</td></tr>";
    }

    echo "<tr><td colspan=2><input type=submit value=Update>
                            <input type=button value=Batal onclick=self.history.back()></td></tr>
          </table></form>";
    break;  
}
?>
