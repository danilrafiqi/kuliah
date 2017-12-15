<html>
<head><title>.:: Fungsi getdate ::.</title></head>
<body>
<font face=verdana size=2>
<?php
echo "Sekarang Jam : ",date('h:i:s A');
echo "<hr>";
$jam=getdate();
echo "Selamat <b><u>";
if($jam['hours']<=9)
echo "Pagi";
else
if($jam[hours]<=14)
echo "Siang";
else
if($jam[hours]<=19)
echo "Sore";
else
echo "Malam";
echo "</b></u> Mr. Jack";
?>
</body>
</html>