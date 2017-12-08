<?php
//membuat cookies sederhana
setcookie("testcookies","Durian");

?>
<html>
<head>
<title>program membuat cookies sederhana</title>
</head>
<body>
<h3> Demo Cookies </h3> <br>
<?php
$testcookies = $_COOKIE['testcookies'];
echo "Nama Cookies : $testcookies";
?>
</body>
</html>