<?php
//menampilkan session id
//lihat_session_ID.php
session_start();
?>
<html>
<head>
<title>Demo Session ID</title>
</head>
<body>
<?php
print "<p>Selamat Datang,....<br> ID session anda adalah :
".session_id()."<p>";
?>
</body>
</html>