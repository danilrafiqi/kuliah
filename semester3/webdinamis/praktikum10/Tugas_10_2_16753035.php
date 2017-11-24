<html>
<head><title>Tugas dan Pertanyaan</title></head>
<body>
<form action="" method="get"> Masukkan Nilai :
<input type="text" name="nilai" size="10"><p>
<input type="submit" value="Proses">
</form>
	<?php
	if(isset($_GET['nilai'])){
		$nilai = $_GET['nilai'];
		echo "<br>Nilai anda adalah : $nilai <br>";
		echo "----------------------------------------------------<br>";
		$huruf = ($nilai >= 71 and $nilai <= 100) ? "A" : (($nilai >= 61 and $nilai <= 70) ? "B" : (($nilai >= 51 and $nilai <= 60) ? "C": (($nilai >= 41 and $nilai <= 50) ? "D" : (($nilai >= 0 and $nilai <= 40) ? "E": "Angka harus dari 1-100") ) ) ) ;
		echo "Huruf Mutu Nilai Anda = ".$huruf;
	}
	?>
</body>
</html>