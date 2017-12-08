<?php
//Cek Registrasi session
session_start();
//session_register("nama");
if ($_SESSION["nama"])
{
echo "<b> session telah teregistrasi</b><br><br>";
echo "<b> hasil registrasi : </b><br>". session_encode();
}
else
{
echo "<b> Tidak ada session teregistrasi...!</b>";
}
?>