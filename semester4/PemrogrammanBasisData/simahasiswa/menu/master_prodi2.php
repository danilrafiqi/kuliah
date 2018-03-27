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
  <a href="master_prodi2.php?a=tambah" >CREATE</a>
  <table >
  <tr>
  <td>No</td>
  <td>ID Agama</td>
  <td>Agama</td>
  <td>Publish</td>
  <td>Aksi</td>
  </tr>
  <?php
  while($baris = mysqli_fetch_array($hasil))
  {
  ?>
  <tr>

    
  <td><?php echo $i; ?></td>
  <td><?php echo $baris['idprodi']; ?></td>
  <td><?php echo $baris['nmprodi']; ?></td>
  <td><?php echo $baris['akreditasi']; ?></td>
  <td><?php echo $baris['thn_berdiri']; ?></td>
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
<td width="200px">Nama Prodi</td>
<td><input type="text" name="nmprodi" id="nmprodi" maxlength="25" size="25" value="<?php  echo trim($row["nmprodi"]) ?>" ></td>
</tr>
<tr>
<td width="200px">Akreditasi</td>
<td><input type="text" name="akreditasi" id="akreditasi" maxlength="25" size="25" value="<?php  echo trim($row["akreditasi"]) ?>" ></td>
</tr>
<tr>
<td width="200px">Tahun Berdiri</td>
<td><input type="text" name="tahun_berdiri" id="tahun_berdiri" maxlength="25" size="25" value="<?php  echo trim($row["tahun_berdiri"]) ?>" ></td>
</tr>
<tr>
<td >PUBLIKASI</td>
<td >
<?php  $publish = str_replace('"', '"', trim($row["publish"])); ?>
<input type="radio" name="publish" id="publish" value="T" <?php  if($publish=='T' || $publish=='') {echo "checked=\"checked\""; } else {echo ""; }  ?> />
<label>Dipublikasikan</label><br>
<input type="radio" name="publish" id="publish" value="F" <?php  if($publish=='F') {echo "checked=\"checked\""; } else {echo ""; } ?> />
<label>Tidak dipublikasikan</label>
</td>
</tr>
</table>
<?php  }?>
 
<?php 
function curd_create() 
{
?>
<h3>Penambahan Data Agama</h3><br>
<a href="master_prodi2.php?a=reset">Batal</a>
<br>
<form action="master_prodi2.php?a=reset" method="post">
<input type="hidden" name="sql" value="insert" >
<?php
$row = array(
  "nmprodi" => "",
  "akreditasi" => "",
  "tahun_berdiri" => "",
  "publish" => "T");
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
  $sql = " select * from prodi "; 
  $hasil = mysqli_query($kdb, $sql) or die(mysql_error());
  return $hasil;
}

function sql_insert()
{
  global $kdb;
  global $_POST; 
  echo $_POST["nmprodi"];
  $prodi = $_POST["nmprodi"];
  $akreditasi = $_POST["akreditasi"];
  $tahun_berdiri = $_POST["tahun_berdiri"];
  echo "$prodi";
  $sql  = "INSERT INTO `prodi` (`idprodi`, `nmprodi`, `akreditasi`, `thn_berdiri`) VALUES (NULL, '$prodi', '$akreditasi', '$tahun_berdiri')";
  mysqli_query($kdb, $sql) or die( mysqli_error()); 
}

?>