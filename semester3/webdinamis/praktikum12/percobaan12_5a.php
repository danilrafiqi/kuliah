<html>
<head><title>.:: Fungsi-fungsi Trigonometri ::.</title></head>
<body>
	<h3><u>Fungsi-fungsi Trigonometri</u></h3><p>
<font face=verdana size=2>
<form method="get">Masukkan sudut yg dicari :
<input type=text name=sdt><br><br>
<input type=submit value="Hitung">
</form>
<?php

if(isset($_GET['sdt'])){
	$sdt = $_GET['sdt'];
}

if (isset($sdt))
{
$sudut=intval($sdt);
$sudrad=deg2rad($sudut);
$sin=sin($sudrad);
$cos=cos($sudrad);
$tan=tan($sudrad);
$arcsin=asin($sudrad);
$arccos=acos($sudrad);
$arctan=atan($sudrad);
echo "Sudut $sudut sama
dengan $sudrad radian<br>";
printf("sin($sudut) =
%01.4f<br>",$sin);
printf("cos($sudut) =
%01.4f<br>",$cos);
printf("tan($sudut) = %01.4f<br>",$tan);
printf("arc sin($sudut) = %01.4f<br>",$arcsin);
printf("arc cos($sudut) = %01.4f<br>",$arccos);
printf("arc tan($sudut) = %01.4f<br>",$arctan);
}
?>
</body></html>