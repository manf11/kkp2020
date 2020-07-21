<?php
$server ="localhost";
$username="root";
$password="";
$dbname='coba';
$conn=mysql_connect($server,$username,$password);
mysql_select_db($dbname) or die("koneksi database gagal");
?>
