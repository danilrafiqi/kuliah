<?php
//mengaktifkan batas waktu cookies
setcookie("testcookies","Durian", time()+3600);
?>
<html>
<head>
<title> mengaktifkan batas waktu cookies </title>
</head>
<body>
<h3> Demo Batas Waktu Cookies </h3> <br>
<?php
$testcookies = $_COOKIE['testcookies'];

if (isset($testcookies))
print "<p> Haiii..., Cookies anda adalah : $testcookies</p>";
else
print "<p> Haiii.., ini kunjungan anda yang pertama</p>";
?>
</body>
</html>