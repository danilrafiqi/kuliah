<?php
$kdb = koneksidatabase();
curd_read();

function curd_read()
{
  
  $hasil = sql_select();
  $i=1;
  ?>
  <H3> MASTER DATA MAHASISWA  </H3> 
  <a href="#" class="btn btn-default btn-xs">CREATE</a>
  <table class="table table-bordered">
  <tr>
  <td>Id Dosen</td>
  <td>Nama Dosen</td>
  <td>Gelar</td>
  <td>Tempat Lahir</td>
  <td>Tanggal Lahir</td>
  <td>Sex</td>
  <td>Id Prodi</td>
  <td>Id Pendidikan</td>          

  </tr>
  <?php
  while($baris = mysqli_fetch_array($hasil))
  {
  ?>
  
  <tr>

  <td><?php echo $baris['iddosen']; ?></td>
  <td><?php echo $baris['nmdosen']; ?></td>
  <td><?php echo $baris['gelar']; ?></td>
  <td><?php echo $baris['tempat_lahir']; ?></td>
  <td><?php echo $baris['tanggal_lahir']; ?></td>
  <td><?php echo $baris['sex']; ?></td>
  <td><?php echo $baris['idprodi']; ?></td>
  <td><?php echo $baris['idpendidikan']; ?></td>          
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
  $sql = " select * from dosen"; 
  $hasil = mysqli_query($kdb, $sql) or die(mysqli_error());
  return $hasil;
}
?>