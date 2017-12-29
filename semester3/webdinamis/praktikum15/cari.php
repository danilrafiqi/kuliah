<title>Hasil Pencarian</title>
<?php
include "koneksi.php";
global $koneksi;
$telp=$_POST["telepon"];
include("koneksi.php");
$select = "select * from tbl_daftar_mahasiswa WHERE telp = $telp";
$select_query = mysqli_query($koneksi,$select);
?>
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
}
echo"
<form method=\"POST\" action=\"action.php?id=$id\">
<table border=\"1\" width=\"35%\" cellpadding=\"2\" cellspacing=\"2\" align=\"center\"
bgcolor=\"#FFCC33\">
<caption>
<h2>Pencarian Data</h2>
</caption>
<tr>
<td>Nomor ID</td>
<td><input type=\"text\" name=\"nama2\" size=\"30\" disabled=\"disabled\" maxlength=\"50\"
value=$id></td>
</tr>
<tr><td>Nama</td>
<td><input type=\"text\" name=\"nama\" size=\"30\" disabled=\"disabled\" maxlength=\"50\"
value=$nama></td>
</tr>
<tr><td>Jenis Kelamin</td><td><input type=\"text\" disabled=\"disabled\" name=\"jns_kelamin\"
size=\"30\" maxlength=\"50\" id=\"jns_kelamin\" value=$jeniskelamin></td></tr>
<tr><td>Status</td><td><input type=\"text\" name=\"status\" disabled=\"disabled\" size=\"30\"
maxlength=\"50\" id=\"status\" value=$status></td></tr>
<tr><td>Lulusan Sekolah</td><td><input type=\"text\" disabled=\"disabled\" name=\"sekolah\" size=\"30\"
maxlength=\"50\" value=$lulusan/</td></tr>
<tr><td>Tahun Ajaran</td><td><input type=\"text\" disabled=\"disabled\" name=\"tahun_ajaran\"

size=\"30\" maxlength=\"50\" id=\"tahun_ajaran\" value=$tahunajaran></td></tr>
<tr><td>Pekerjaan</td><td><input type=\"text\" disabled=\"disabled\" name=\"pekerjaan\" size=\"30\"
maxlength=\"50\" value=$pekerjaan></td></tr>
<tr><td>Alamat</td><td><textarea name=\"alamat\" disabled=\"disabled\" cols=\"30\"
rows=\"4\">$alamat</textarea></td></tr>
<tr><td>Kelurahan</td>
<td><input type=\"text\" name=\"kelurahan\" disabled=\"disabled\" size=\"30\" maxlength=\"50\"
value=$kelurahan></td>
</tr>
<tr><td>Kecamatan</td><td><input type=\"text\" disabled=\"disabled\" name=\"kecamatan\" size=\"30\"
maxlength=\"50\" value=$kecamatan></td></tr>
<tr><td>Kota</td><td><input type=\"text\" disabled=\"disabled\" name=\"kota\" size=\"30\"
maxlength=\"50\" value=$kota></td></tr>
<tr><td>Provinsi</td><td><input type=\"text\" disabled=\"disabled\" name=\"provinsi\" size=\"30\"
maxlength=\"50\" value=$provinsi></td></tr>
<tr>
<td>No Telepon</td>
<td><input type=\"text\" disabled=\"disabled\" name=\"telepon2\" size=\"30\" maxlength=\"50\"
value=$telp></td>
</tr>
<tr><td colspan=\"2\">
<div align=\"center\">
<input type=\"hidden\" value=\"$id\" name=\"id\">
<input type=\"submit\" name=\"action\" value=\"Update\">
<input type=\"submit\" name=\"action\" value=\"Delete\">
</div></td></tr>
</table>
</form>"
?>
<p><center><input type="button" value="Lihat Data" onClick="window.location.href='lihatdata.php'">
<input type="button" value="Input Data" onClick="window.location.href='index.html'">
</center></p>