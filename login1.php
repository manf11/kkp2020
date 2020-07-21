<!DOCTYPE html>
<html>
<head>
<title> Login</title>
  
<link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<?php
   session_start();
   if(isset($_SESSION['username'])) {
   header('location:event.php'); }
   require_once("koneksi.php");
?>
<title>Form Login</title>
<div align='center'>
  <form action="proseslogin.php" method="post">
    <div class="imgcontainer">
      <img src="kamera2.png" height="100" width="500px"  alt="avatar" class="avatar">
    </div>
  <table>
<tbody>

    <div class="container">
      <form>
<h3>MASUK</h3>
    <div class="form-input">
  <br>Nama user</br>
  <input type="text" class="form-control" name="username" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Masukkan Namauser"></div>
  <div class="form-input">
    <br>Kata sandi</br>
    <input type="password" class="form-control" name="password" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Masukkan Katasandi"></div>
<center><button type="submit" class="btn btn-success" name="login">Masuk</button>
 <button class="btn btn-danger" type="reset">Batal</button></center>
 <p class="text-light">Belum Punya akun ?</p>
<a href="daftar.php">Daftar</a>
</div>
</div>
</div>
</form>

</div> </tbody>
  </table>
  </form>
</div>
