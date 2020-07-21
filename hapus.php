<?php
include ('koneksi.php');
$id=$_GET['id'];
mysql_query("DELETE FROM tb_post WHERE id_post='$id'") or die(mysql_error());
header("location:index.php");
?>