<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<title>FORM EDIT </title>
</head>
<body>
<div class="container">	
<form action="uploadtut.php" method="POST" enctype="multipart/form-data">
  <div class="form-group">
    <label for="judul2">Isi Judul tutor</label>
    <input type="text" class="form-control" name="judul2" id="judul" placeholder="Masukan Isi Judul Postingan">
  </div>
  <div class="form-group col-lg-16">
    <label for="isi2">Isi Postingan tutor</label>
    <textarea type="text" class="form-control" id="isi" name="isi2" rows="5" placeholder="Masukan Isi Postingan "></textarea>
  </div>
  <div class="form-group">
  <div class="col-lg-7 text-dark">
  	<label>Masukan Gambar</label>
  	<input type="file" class="form-control-file" name="file_video">
  </div>
  <center>
  	<input type="submit" class="btn-primary text-light" name="cetak" value="CETAK"></input>
  </center>
</div>
</form>
</div>
</body>
</html>