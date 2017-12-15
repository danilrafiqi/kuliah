<?php
$pengirim = "From: saya@email.com";
$tujuan = "danil.rafiqi@gmail.com";
$subject = "Pemberitahuan";
$isi = "Ini adalah percobaan pengiriman e-mail dengan menggunakan PHP";
mail($tujuan,$subject,$isi,$pengirim);
?>