<?php
//mengecek batas nilai cookies
//cek_batas_cookies.php
if (isset($testcookies))
{
echo " Cookies yang aktif adalah :
<b>".$HTTP_COOKIE_VARS["testcookies"];
}
else
{
echo "<b> Nilai cookies sudah kosong..!</b>";
}
?>