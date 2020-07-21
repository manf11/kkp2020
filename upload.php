<?php 
if (isset($_POST['cetak'])) {

	include('koneksi.php');
	session_start();
	$judul = $_POST['judul'];
	$isi =$_POST['isi'];
	$id =$_SESSION['username'];
	
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
	
	$simpan="INSERT INTO tb_post SET
			judul_post='$judul',
			isi_post='$isi',
			id_author='$id',
			gambar='$nama_file'";
$input = mysql_query($simpan);

		if ($input) {
			header('location: index.php');
		}else{
			echo "Data Gagal Di Tambahkan";
		}

}
 ?>