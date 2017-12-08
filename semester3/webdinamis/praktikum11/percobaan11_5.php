<?php
//Registrasi session
session_start();

if(isset($_POST["submit"])){
	$nama_dp = $_SESSION["nama"] = $_POST["nama"];
	$nama_bl = $_SESSION["nama_bl"] = $_POST["nama_bl"];
	$submit = $_POST["submit"];
}


if (!empty($nama))
{
echo "Haiiii.... <b>$nama</b><br> selamat datang kembali di situs ini.";
}
else if (empty($nama) && !isset($submit))
{
echo "<h3> REGISTRASI SESSION </h3><br>";
echo "<pre> <form action='' method=post>
Nama Depan : <input type=text name='nama'_dp><br>
Nama Belakang : <input type=text name=nama_bl><br>
<input type=submit name=submit value=submit>
</form></pre>";
}
else if (isset($submit) && empty($nama))
{
$nama = $nama_dp. " " .$nama_bl;
echo " Selamat Datang, $nama";
echo " <br>Terima Kasih atas kunjungan anda";
}
?>