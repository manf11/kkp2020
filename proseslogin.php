<?php
   session_start();
   require_once("koneksi.php");
   $username = $_POST['username'];
   $pass = $_POST['password'];
   $cekuser = mysql_query("SELECT * FROM login1 WHERE username = '$username'");
   $hasil = mysql_fetch_array($cekuser);
   if(mysql_num_rows($cekuser) == 0) {

     echo "<div align='center'><h1>Username Belum Terdaftar! <a href='login1.php'>Kembali</a></div>";
   } else {
     if($pass <> $hasil['password']) {
       echo "<div align='center'>Password salah! <a href='login1.php'>Back</a></div>";
     } else {
       $_SESSION['username'] = $hasil['username'];
       $_SESSION['level'] = $hasil['hak_akses'];
       $_SESSION['masuk'] = 'TRUE';
       header('location:index.php');
     }
   }
?>

<link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
