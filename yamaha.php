<?php include"koneksi.php";
$tampil=mysql_query("SELECT * FROM tb_post",$conn);
?>
<!DOCTYPE html>
<html>
<head>
	<title>YAMAHA</title>
<link rel="stylesheet" a href="style.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<center>ARTIKEL YAMAHA</center>
</body>
</html>
<?php
while ($data=mysql_fetch_array($tampil)){ ?>
<?php echo $data['judul_post'];?><br>
	<?php echo $data['isi_post']; ?><br> 
	<?php echo $data['tgl_post'];?>
<?php } ?>

<div class="form-group">
    <label for="input user">Komentar</label>
    <input type="text" class="form-control" id="komentar1"  placeholder="masukan komentar" name="komentar">
	<textarea name="isi id cols="7" rows="5"></textarea><br>
	<button type="submit" class="btn btn-success" name="komen">SUBMIT</button>
</form>