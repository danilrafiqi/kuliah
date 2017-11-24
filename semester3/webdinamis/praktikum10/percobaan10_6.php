<html>
<head><title>Perulangan (FOR)</title></head>
<body>
<form action="" method="get"> Teks "HALLO" akan ditampilkan sebanyak :
<input type="text" name="nilai" size="2"><p>
<input type="submit" value="Proses">
</form>
	<?php
	if(isset($_GET['nilai'])){
		$nilai = $_GET['nilai'];
		echo "<br>Jumlah perulangan yang anda minta : $nilai <br>";
		echo "----------------------------------------------------<br>";
		for($i=1; $i <= $nilai; $i++){ 
			echo "HALLO <br>"; 
		}
	}
	?>
</body>
</html>