<!DOCTYPE html>
<html>
<head>
	<title>String</title>
</head>
<body>
<?php

echo "strlen = ".strlen("Hello");echo "<br>";
echo "strpos = ".strpos("I love php, I love php too!","php");echo "<br>";
echo "str_repeat = ".str_repeat(".",13);echo "<br>";
echo "str_replace = ".str_replace("world","Peter","Hello world!");echo "<br>";
echo "strrev = ".strrev("Hello World!");echo "<br>";
echo "strstr = ".strstr("Hello world!","world");echo "<br>";
echo "stristr = ".stristr("Hello world!","WORLD");echo "<br>";
echo "strchr = ".strchr("Hello world!","world");echo "<br>";
echo "strtolower = ".strtolower("Hello WORLD.");echo "<br>";
echo "strtoupper = ".strtoupper("Hello WORLD!");echo "<br>";
echo "substr = ".substr("Hello world",6);echo "<br>";
echo "substr_count = ".substr_count("Hello world. The world is nice","world");echo "<br>";
echo "ucfirst = ".ucfirst("hello world!");echo "<br>";
echo "ucwords = ".ucwords("hello world");echo "<br>";

?>
</body>
</html>