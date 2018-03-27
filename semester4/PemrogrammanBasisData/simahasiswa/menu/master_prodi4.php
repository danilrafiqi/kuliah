<?php
$a = !empty($_GET['a']) ? $_GET['a'] : "reset";
$idagama = !empty($_GET['id']) ? $_GET['id'] : " ";   
$kdb = koneksidatabase();
$a = @$_GET["a"];
$sql = @$_POST["sql"];
switch ($sql) {
    case "insert": sql_insert(); break;
    case "update": sql_update(); break;
    case "delete": sql_delete(); break;	
}

switch ($a) {
    case "reset" :  curd_read();   break;
    case "tambah":  curd_create(); break;	
    case "edit"  :  curd_update($idagama); break;	
    case "hapus"  :  curd_delete($idagama); break;  	
    default : curd_read(); break;
}
  mysqli_close($kdb);

function curd_read()
{ 
  $hasil = sql_select();
  $i=1;
  ?>
  <H3> MASTER DATA AGAMA  </H3> 
  <a href="master_prodi4.php?a=tambah" >CREATE</a>
  <table >
  <tr>
  <td>Id Prodi</td>
  <td>Nama Prodi</td>
  <td>Akreditasi</td>
  <td>Tahun Berdiri</td>
  </tr>
  <?php
  while($baris = mysqli_fetch_array($hasil))
  {
  ?>
  <tr>
  <td><?php echo $baris['idprodi']; ?></td>
  <td><?php echo $baris['nmprodi']; ?></td>
  <td><?php echo $baris['akreditasi']; ?></td>
  <td><?php echo $baris['thn_berdiri']; ?></td>
  <td>
  <a href="master_prodi4.php?a=edit&id=<?php echo $baris['idprodi']; ?>">UPDATE</a>	
  <a href="master_prodi4.php?a=hapus&id=<?php echo $baris['idprodi']; ?>">DELETE</a>	
  </td>
  </tr>
  <?php
   $i++;  
  }
  ?>
  </table>  
   <?php
  mysqli_free_result($hasil);
}
 ?>

 
<?php 
function formeditor($row)
  {
?>
<table>
<tr>
<td width="200px">Id Prodi</td>
<td><input type="text" name="idprodi" id="idprodi" maxlength="25" size="25" value="<?php  echo trim($row["idprodi"]) ?>" ></td>
</tr>
<tr>
<td width="200px">Nama Prodi</td>
<td><input type="text" name="nmprodi" id="nmprodi" maxlength="25" size="25" value="<?php  echo trim($row["nmprodi"]) ?>" ></td>
</tr>
<tr>
<td width="200px">Akreditasi</td>
<td><input type="text" name="akreditasi" id="akreditasi" maxlength="25" size="25" value="<?php  echo trim($row["akreditasi"]) ?>" ></td>
</tr>
<tr>
<td width="200px">Tahun Berdiri</td>
<td><input type="text" name="thn_berdiri" id="thn_berdiri" maxlength="25" size="25" value="<?php  echo trim($row["thn_berdiri"]) ?>" ></td>
</tr>
</table>
<?php  }?>
 
<?php 
function curd_create() 
{
?>
<h3>Penambahan Data Agama</h3><br>
<a href="master_prodi4.php?a=reset">Batal</a>
<br>
<form action="master_prodi4.php?a=reset" method="post">
<input type="hidden" name="sql" value="insert" >
<?php
$row = array(
  "idprodi"=>"",
  "nmprodi" => "",
  "akreditasi" => "",
  "thn_berdiri" => "",
  "publish" => "T");
formeditor($row)
?>
<p><input type="submit" name="action" value="Simpan" ></p>
</form>
<?php } ?>

<?php 
function curd_update($idprodi) 
{
global $kdb;
$hasil2 = sql_select_byid($idprodi);
$row = mysqli_fetch_array($hasil2);
?>
<h3>Pengubahan Data Agama</h3><br>
<a href="master_prodi4.php?a=reset">Batal</a>
<br>
<form action="master_prodi4.php?a=reset" method="post">
<input type="hidden" name="sql" value="update" >
<input type="hidden" name="idprodix" value="<?php  echo $idprodi; ?>" >
<?php
formeditor($row)
?>
<p><input type="submit" name="action" value="Update" ></p>
</form>
<?php } ?>

<?php 
function curd_delete($idprodi) 
{
global $kdb;
$hasil2 = sql_select_byid($idprodi);
$row = mysqli_fetch_array($hasil2);
?>
<h3>Penghapusan Data Agama</h3><br>
<a href="master_prodi4.php?a=reset">Batal</a>
<br>
<form action="master_prodi4.php?a=reset" method="post">
<input type="hidden" name="sql" value="delete" >
<input type="hidden" name="idprodix" value="<?php  echo $idprodi; ?>" >
<h3> Anda yakin akan menghapus data Prodi <?php echo $row['nmprodi'];?> </h3>
<p><input type="submit" name="action" value="Update" ></p>
</form>
<?php } ?>

<?php 
function koneksidatabase()
{
    include('../koneksi/koneksi.php');
	return $kdb;
}

function sql_select()
{
  global $kdb;
  $sql = " select * from prodi "; 
  $hasil = mysqli_query($kdb, $sql) or die(mysql_error());
  return $hasil;
}

function sql_insert()
{
  global $kdb;
  global $_POST; 
  $nmprodi = $_POST["nmprodi"];
  $akreditasi = $_POST["akreditasi"];
  $thn_berdiri = $_POST["thn_berdiri"];
  $sql  = "INSERT INTO `prodi` (`idprodi`, `nmprodi`, `akreditasi`, `thn_berdiri`) VALUES (NULL, '$nmprodi', '$akreditasi', '$thn_berdiri');";        
  mysqli_query($kdb, $sql) or die( mysql_error()); 
}

function sql_select_byid($idprodi)
{
  global $kdb;
  $sql = " select * from prodi where idprodi = ".$idprodi; 
  $hasil2 = mysqli_query($kdb, $sql) or die(mysql_error());
  return $hasil2;
}

function sql_update()
{
  global $kdb;
  global $_POST; 
  $idprodi = $_POST["idprodi"];
  $nmprodi = $_POST["nmprodi"];
  $akreditasi = $_POST["akreditasi"];
  $thn_berdiri = $_POST["thn_berdiri"];
  $sql  = "UPDATE `prodi` SET `nmprodi` = '$nmprodi', `akreditasi` = '$akreditasi', `thn_berdiri` = '$thn_berdiri' WHERE `prodi`.`idprodi` = $idprodi";       
  mysqli_query($kdb, $sql) or die( mysql_error()); 
}

function sql_delete()
{
  global $kdb;
  global $_POST; 
  $idprodi = $_POST["idprodix"];
  $sql  =  "DELETE FROM `prodi` WHERE `prodi`.`idprodi` = $idprodi";			  
  mysqli_query($kdb, $sql) or die( mysqli_error()); 
}

?>