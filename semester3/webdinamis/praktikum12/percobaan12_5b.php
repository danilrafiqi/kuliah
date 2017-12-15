<html>
<head><title>.:: Fungsi-fungsi Trigonometri ::.</title></head>
<body>
<h3><u>Konversi Bilangan</u></h3>
<p>
<font face=verdana size=2>
<form method="GET">
Masukkan bilangan yg dicari :
<input type=text name=bil>
<br><br>
<input type=submit
value="Convert">
</form>
<?php
if (isset($_GET['bil'])){
	$bil = $_GET['bil'];
}

if (isset($bil))
{
$bilangan=intval($bil);
$baseconvert=base_convert($bilangan,10,3);
$desbin=decbin($bilangan);
$deshex=dechex($bilangan);
$desoct=decoct($bilangan);
printf("Desimal $bilangan dalam basis 3 adalah = $baseconvert<br>");
printf("Desimal $bilangan dalam basis 2 adalah = $desbin<br>");
printf("Desimal $bilangan dalam basis 16 adalah = $deshex<br>");
printf("Desimal $bilangan dalam basis 8 adalah = $desoct<br>");
}
?>
</body>
</html>