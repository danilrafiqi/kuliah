<?php
include "koneksi.php";
global $koneksi;
$id = $_POST['id'];
$tanggal_daftar = date("Y-n-d");
$nama = $_POST['nama'];
if(isset($_POST['jns_kelamin'])){
	$jenis_kelamin = $_POST['jns_kelamin'];
}else{
	$jenis_kelamin = 'pria';
}


$status = $_POST['status'];
$sekolah = $_POST['sekolah'];
$tahun_ajaran = $_POST['tahun_ajaran'];
$pekerjaan = $_POST['pekerjaan'];
$alamat = $_POST['alamat'];
$kelurahan = $_POST['kelurahan'];
$kecamatan = $_POST['kecamatan'];
$kota = $_POST['kota'];
$provinsi = $_POST['provinsi'];
$telepon = $_POST['telepon'];
$query_update = "update tbl_daftar_mahasiswa set nama_pendaftar = '$nama', jns_kelamin =
'$jenis_kelamin', status = '$status', lulusan_sekolah = '$sekolah', tahun_ajaran = '$tahun_ajaran',
pekerjaan = '$pekerjaan', alamat = '$alamat', kelurahan = '$kelurahan', kecamatan = '$kecamatan',
kota = '$kota', provinsi = '$provinsi', telp = '$telepon' WHERE iddaftar = $id";
$update = mysqli_query($koneksi,$query_update);
if($update)
{


	include("redirectview.php");
}
else
{
echo "Gagal update ... ";
echo "<META HTTP-EQUIV=Refresh CONTENT='2; URL=lihatdata.php'>";
}