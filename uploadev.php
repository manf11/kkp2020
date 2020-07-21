<?php 
if (isset($_POST['cetak'])) {

	include('koneksi.php');
	session_start();
	$judul = $_POST['judul1'];
	$isi =$_POST['isi1'];
	$id =$_SESSION['username'];
	
	$nama_file=$_FILES['gambra1']['name'];
	$ukuran_file=$_FILES['gambra1']['size'];
	$tipe_file=$_FILES['gambra1']['type'];
	$tmp_file=$_FILES['gambra1']['tmp_name'];

	$path="gambar/".$nama_file;
	if ($tipe_file=="image/jpeg" || $tipe_file == "image/png") {
		if($ukuran_file <= 100000000){
			move_uploaded_file($tmp_file, $path);
		}
	}
	
	$simpan="INSERT INTO tbl_event SET
			judul_ev='$judul',
			isi_ev='$isi',
			id_author='$id',
			gambar='$nama_file'";
$input = mysql_query($simpan);

		if ($input) {
			header('location: event.php');
		}else{
			echo "Data Gagal Di Tambahkan";
		}

}
 ?>