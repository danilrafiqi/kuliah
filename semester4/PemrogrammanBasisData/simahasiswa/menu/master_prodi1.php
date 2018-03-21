<?php
$kdb = koneksidatabase();
curd_read();

function curd_read()
{
  
  $hasil = sql_select();
  $i=1;
  ?>
  <H3> MASTER DATA AGAMA  </H3> 
  <a href="#" class="btn btn-default btn-xs">CREATE</a>
  <table class="table table-bordered">
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
	<a href="#" class="btn btn-default btn-xs">UPDATE</a> 
	<a href="#" class="btn btn-default btn-xs">DELETE</a>
  </td>
  </tr>
  <?php
  
  }
  ?>
  </table>  
   <?php
  mysqli_free_result($hasil);
}

function koneksidatabase()
{
    include('../koneksi/koneksi.php');
	return $kdb;
}

function sql_select()
{
  global $kdb;
  $sql = " select * from prodi "; 
  $hasil = mysqli_query($kdb, $sql) or die(mysqli_error());
  return $hasil;
}
?>