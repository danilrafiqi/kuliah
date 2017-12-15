<!DOCTYPE html>
<html>
<head>
	<title>Muhamad Danil Rafiqi</title>
</head>
<body>

<form method="get">

	<input type="text" name="jari" placeholder="Masukkan jari jari lingkaran">
	<input type="submit" name="submit">
</form>
<?php
	function luasLingkaran($jari){
		$phi = 3.14;
		$luas = $phi*$jari*$jari;
		echo "Luas lingkarannya adalah = ".$luas;
	}

	if (isset($_GET['submit'])) {
		luasLingkaran($_GET['jari']);
	}
?>
</body>
</html>
