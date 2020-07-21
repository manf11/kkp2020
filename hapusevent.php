<?php
include ('koneksi.php');
$id=$_GET['id'];
mysql_query("DELETE FROM tbl_event WHERE id_ev='$id'") or die(mysql_error());
header("location:event.php");
?>