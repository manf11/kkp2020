<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<title>POST</title>
</head>
<body>

	<?php
	include "koneksi.php";
	$id=$_GET['id'];
	$query_mysql = mysql_query("SELECT* FROM tbl_event WHERE id_ev='$id'")or die(mysql_error());
	$nomor=1;
	$data=mysql_fetch_array($query_mysql)
	?>
<div class="container">	
<form action="foto.php" method="POST" enctype="multipart/form-data">
  <div class="form-group">
  	<input hidden="on" type="text" name="id" value="<?=$data['id_post']; ?>">
    <label for="judul">Isi Judul</label>
    <input type="text" class="form-control" name="judul" id="judul" placeholder="Masukan Isi Judul Postingan" value="<?= $data['judul_ev']?>">
  </div>
  <div class="form-group col-lg-16">
    <label for="isi">Isi Postingan</label>
    <textarea type="text" class="form-control" id="isi" name="isi" rows="5" placeholder="Masukan Isi Postingan"><?= $data['isi_ev'] ?></textarea>
  </div>
  <div class="form-group">
  <div class="col-lg-7 text-dark">
  	<label>Masukan Gambar</label>
  	<input type="file" class="form-control-file" name="gambra">
  </div>
  <center>
  	<input type="submit" class="btn-primary text-light" name="cetak" value="update"></input>
  </center>
</div>
</form>
</div>
</body>

</html>