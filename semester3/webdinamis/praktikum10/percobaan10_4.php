<html>
<head><title>Kondisi (IF TERSARANG)</title>
</head>
<body>
<form action="" method="get"> Masukkan Angka :
<input type="text" name="nilai" size="2"><p>
<input type="submit" value="Proses">
</form>
	<?php
		echo "<br>";
		echo "----------------------------------------------------<br>";
		if(isset($_GET['nilai'])){
			$nilai = $_GET['nilai'];
			echo "Angka yang anda masukkan adalah : $nilai<br>";
			if ($nilai>50){ 
				echo "dan Angka tersebut lebih besar dari 50 <br>"; 
			}elseif($nilai<50){ 
				echo "dan Angka tersebut lebih kecil dari 50 <br>"; 
			}
		}
		else
	?>
</body>
</html>