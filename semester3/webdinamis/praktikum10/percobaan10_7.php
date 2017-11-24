<html>
<head><title>Perulangan (WHILE)</title></head>
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
		$i=1;
		while($i<= $nilai){
			echo "HALLO <br>";
			$i++;
		}
	}
	?>
</body>
</html>