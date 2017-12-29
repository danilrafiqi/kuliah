<?php
include "koneksi.php";
$select = "select * from tbl_daftar_mahasiswa order by iddaftar desc";
global $koneksi;
$select_query = mysqli_query($koneksi,$select);
?>
<html>
<head>
<title>Lihat Data</title>
</head>
<body>
<table style="font-size:11px;font-family:'arial';text-align:center;" border='1' width="80%" align='center' >
<caption><h1>Daftar Calon Mahasiswa Baru</h1></caption>
<tr><th>No</th><th>Tanggal</th><th>Nama</th><th>Jenis
Kelamin</th><th>Status</th><th>Lulusan</th><th>Tahun</th>
<th>Pekerjaan</th><th>Alamat</th><th>Kelurahan</th><th>Kecamatan</th><th>Kota</th><th>Provinsi
</th><th>Telepon</th>
<th>Pilihan</th></tr>
<?php
while($select_result = mysqli_fetch_array($select_query))
{
$id = $select_result['iddaftar'] ;
$tanggaldaftar = $select_result['tanggal_daftar'] ;
$nama = $select_result['nama_pendaftar'] ;
$jeniskelamin = $select_result['jns_kelamin'] ;
$status = $select_result['status'] ;
$lulusan = $select_result['lulusan_sekolah'] ;
$tahunajaran = $select_result['tahun_ajaran'] ;
$pekerjaan = $select_result['pekerjaan'] ;
$alamat = $select_result['alamat'] ;
$kelurahan = $select_result['kelurahan'] ;
$kecamatan = $select_result['kecamatan'] ;
$kota = $select_result['kota'] ;
$provinsi = $select_result['provinsi'] ;
$telepon = $select_result['telp'] ;
Echo
"<tr><td>$id</td><td>$tanggaldaftar</td><td>$nama</td><td>$jeniskelamin</td><td>$status</td><td>$lulusan</td>
<td>$tahunajaran</td><td>$pekerjaan</td><td>$alamat</td><td>$kelurahan</td><td>$kecamatan</td>
<td>$kota</td>
<td>$provinsi</td><td>$telepon</td>
<td>
<form method=\"POST\" action=\"action.php?id=$id\"><input type=\"hidden\" value=\"$id\" name=\"id\">
<input type=\"submit\" name=\"action\" value=\"Update\"><br />
<input type=\"submit\" name=\"action\" value=\"Delete\">
</form>
</td>
</tr>";
}
?>
</table>
<center>
<p>
<input type="button" value="Input Data" onClick="window.location.href='index.html'">


</p>
<form name="form1" method="POST" action="cari.php">
<p>Masukan berdasarkan No. Telp :
<input name="telepon" type="text" id="telepon">
<input type="submit" name="Submit" value="Cari">
</p>
</form></p>
</center></p>
</body>
</html>