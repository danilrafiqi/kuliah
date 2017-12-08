<?php
//program tes cookies
$status = 0;
if (isset($myTstCky) && ($myTstCky == "ChocChip")) $status = 1;
if (isset($CCHK))
{
setcookie("myTstCky", "ChocChip");
header("Location: $PHP_SELF?CCHK=1");
exit;
}
?>
<html>
<head>
<title>Program Tes Cookies</title>
</head>
<body bgcolor="#FFFFFF" text="#000000">
Cookie Check Status :
<?php
printf('<font color="#%s">%s</font><br>', $status ? "000000" : "FF0000",
$status ? "<b> Support Cookie OK...!" : "Support Cookie FAILED...!<br>");
?>
</body>
</html>