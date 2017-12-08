<?php
//Menghapus semua registrasi variabel session
//memulai session
session_start();
//menghapus semua variabel session
session_unset();
//mengakhiri session
session_destroy();
echo "<h3> Hapus dan Akhiri Session</h3>";
echo "<b> session telah di hapus....,</b><br>
<p> ID session aktif adalah : ". session_id() ."</p>";
?>