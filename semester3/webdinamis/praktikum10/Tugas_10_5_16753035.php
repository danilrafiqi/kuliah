<?php
$a=1;
do{
    $b=1;
    do{
        echo "*";
        $b++;
    }while ($b<=$a);
    echo "<br>";
    $a++;
}while($a<=6);
?>