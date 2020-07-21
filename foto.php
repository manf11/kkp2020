<?php

	include('koneksi.php');
	session_start();
	$judul = $_POST['judul'];
	$isi =$_POST['isi'];
	$id =$_POST['id'];
	
	$nama_file=$_FILES['gambra']['name'];
	$ukuran_file=$_FILES['gambra']['size'];
	$tipe_file=$_FILES['gambra']['type'];
	$tmp_file=$_FILES['gambra']['tmp_name'];

	$path="gambar/".$nama_file;
	if ($tipe_file=="image/jpeg" || $tipe_file == "image/png") {
		if($ukuran_file <= 100000000){
			move_uploaded_file($tmp_file, $path);
		}
	}
	$update=mysql_query("UPDATE tb_post SET judul_post='$judul', isi_post='$isi', gambar='$nama_file' WHERE id_post='$id'") or die(mysql_error());
	
	header("location:index.php");
  ?>