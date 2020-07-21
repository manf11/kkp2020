<?php 
if (isset($_POST['cetak'])) {

	include('koneksi.php');
	session_start();
	$judul = $_POST['judul2'];
	$isi =$_POST['isi2'];
	$id =$_SESSION['username'];
	
	$nama_file=$_FILES['file_video']['name'];
	$ukuran_file=$_FILES['file_video']['size'];
	$tipe_file=$_FILES['file_video']['type'];
	$tmp_file=$_FILES['file_video']['tmp_name'];

	$path="G:\xampp\htdocs\login/".$nama_file;
	if ($tipe_file=="video/mp4" || $tipe_file == "video/3gp") {
		if($ukuran_file <= 100000000000){
			move_uploaded_file($tmp_file, $path);
		}
	}
	
	$simpan="INSERT INTO tbl_tutor SET
			judul_tutor='$judul',
			isi_tutor='$isi',
			id_author='$id',
			video='$nama_file'";
$input = mysql_query($simpan);

		if ($input) {
			header('location: tutorial.php');
		}else{
			echo "Data Gagal Di Tambahkan";
		}

}
 ?>