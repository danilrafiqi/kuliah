<html>
<head><title>Tugas dan Pertanyaan</title></head>
<body>
<form action="" method="get"> Masukkan Jumlah Bayar :
<input type="text" name="nilai" size="10"><p>
<input type="submit" value="Proses">
</form>
	<?php
	if(isset($_GET['nilai'])){
		$nilai = $_GET['nilai'];
		echo "<br>Jumlah bayar adalah : $nilai <br>";
		echo "----------------------------------------------------<br>";
		$diskon = ($nilai >= 500000) ? "50%" : (($nilai >= 100000) ? "10%" : (($nilai >= 50000) ? "5%":"0%")) ;
		echo "Diskon = ".$diskon;
	}
	?>
</body>
</html>