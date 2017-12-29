<html>
<head>
<title>.:: tes koneksi dengan server database ::.</title>
</head>
<body>
<font face=verdana size=2>
<h3>Tes koneksi dg mysql database server...</h3><p>
<form>
<input type=radio name=tombol Value=1>Sambung
<input type=radio name=tombol Value=0>Putus
<br><br>
<input type=submit Value=" OK ">

</form>
<?php
require("koneksi.php");
global $koneksi;
global $databasename;

$hub=$koneksi;
if (isset($_GET['tombol']))
{
	$tombol = $_GET['tombol'];
if ($tombol==1)
{
if ($hub)
{
echo ("Koneksi dg Server Database <b><u>SUKSES</b></u><br>");

if ($hub) echo "Database <b><u>$databasename</b></u> ditemukan";
else
echo "Database <b><u>$databasename</b></u> TIDAK ditemukan";
} else
echo ("Koneksi dg Server Database <b><u>GAGAL</b></u><br>");
}
elseif ($tombol==0)
{
$mati=@mysqli_close($koneksi);
echo ("Koneksi Server Database <b><u>Dimatikan</b></u><br>");
}
}
?>
</body>
</html>
