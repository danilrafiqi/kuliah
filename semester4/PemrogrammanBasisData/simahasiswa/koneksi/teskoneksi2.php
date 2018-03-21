<?php
$kdb = koneksidatabase();
function koneksidatabase()
{
    include('../koneksi/koneksi.php');
	return $kdb;
}
?>