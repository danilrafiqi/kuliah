<?php
$a = !empty($_GET['a']) ? $_GET['a'] : "reset";
$kdb = koneksidatabase();
$a = @$_GET["a"];
$sql = @$_POST["sql"];
switch ($sql) {
    case "insert": sql_insert();
      break;
}

switch ($a) {
    case "reset" :  curd_read();   break;
    case "tambah":  curd_create(); break;	  
    default : curd_read(); break;
}
  mysqli_close($kdb);

function curd_read()
{ 
  $hasil = sql_select();
  $i=1;
  ?>
  <H3> MASTER DATA AGAMA  </H3> 
  <a href="master_statusaka2.php?a=tambah" >CREATE</a>
  <table >
  <tr>
  <td>ID Status Akademik</td>
  <td>Status Akademik</td>
  <td>Aksi</td>
  </tr>
  <?php
  while($baris = mysqli_fetch_array($hasil))
  {
  ?>
  <tr>
  <td><?php echo $baris['idstatusaka']; ?></td>
  <td><?php echo $baris['nmstatusaka']; ?></td>
  <td>
	<a href="#" class="btn btn-default btn-xs">UPDATE</a> 
	<a href="#" class="btn btn-default btn-xs">DELETE</a>
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
<td width="200px">Nama Status Akademik</td>
<td><input type="text" name="nmstatusaka" id="nmstatusaka" maxlength="25" size="25" value="<?php  echo trim($row["nmstatusaka"]) ?>" ></td>
</tr>
</td>
</tr>
</table>
<?php  }?>
 
<?php 
function curd_create() 
{
?>
<h3>Penambahan Data Agama</h3><br>
<a href="master_statusaka2.php?a=reset">Batal</a>
<br>
<form action="master_statusaka2.php?a=reset" method="post">
<input type="hidden" name="sql" value="insert" >
<?php
$row = array(
  "nmstatusaka" => "",
);
formeditor($row)
?>
<p><input type="submit" name="action" value="Simpan" ></p>
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
  $sql = " select * from status_akademik"; 
  $hasil = mysqli_query($kdb, $sql) or die(mysql_error());
  return $hasil;
}

function sql_insert()
{
  global $kdb;
  global $_POST; 
  echo $_POST["nmstatusaka"];
  $nmstatusaka = $_POST["nmstatusaka"];
  $sql  = "INSERT INTO `status_akademik` (`idstatusaka`, `nmstatusaka`) VALUES (NULL, '$nmstatusaka')";
  mysqli_query($kdb, $sql) or die( mysqli_error()); 
}

?>