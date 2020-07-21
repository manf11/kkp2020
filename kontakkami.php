<?php include"koneksi.php";
  
$tampil=mysql_query("SELECT * FROM tb_post",$conn);
if (isset($_GET['tmbcari'])) {
  $txtcari = $_GET['cari'];
  $tampil = mysql_query("SELECT * FROM tb_post where judul_post LIKE '%$txtcari%'");
}
?>
<?php
session_start();
if(isset($_SESSION['username'])) {  
   $username = $_SESSION['username'];
   $masuk = True; 
   if ($_SESSION['level'] == "admin") {
    $admin = True;
   }else{
    $user = True;
   }
}
?>

<title>Halaman Sukses Login</title>

<link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
 <link rel="stylesheet" type="text/css" href="style1.css">
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
          <div class="container">
        <a class="nav-link" href="index.php">Beranda<span class="sr-only">(current)</span></a>
      </li>
    <li class="nav-item">
        <a class="nav-link" href="kontakkami.php">Kontak Kami</a></li>
      <li class="nav-item"> 
     <a class="nav-link" href="event.php">Event</a></li>
    <li class="nav-item">
   <a class="nav-link" href="tutorial.php">Tutorial</a></li>
          
  <li class="nav-item">
       <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="kontakkami.php" id="navbardropdown" role="button" aria-haspopup="true" aria-expanded="false">merk kamera</a> 
           <div class="dropdown-menu" aria-labelledby="navbardropdown">
        <a class="dropdown-item" href="index.php">canon</a>
      <a class="dropdown-item" href="index.php">nikon</a>
    <a class="dropdown-item" href="index.php">potraid</a>
  <div class="dropdown-divider"></div>
<a class="dropdown-item" href="index.php">aaa</a>
    </div>
  </li>
            <li class="nav-item"><?php if (isset($admin)) { ?>
        <a class="nav-link" href="tambahartikel.php">Tambah Artikel</a></li>
       <?php } ?>
             <li class="nav-item">
        <?php if (isset($admin) || isset($user )) { ?>
        <a class="nav-link" href="logout.php">Keluar</a></li>
      <?php } ?>
    </div>
  
  <form action="" method="GET" class="form-inline my-2 my-lg-0">
      <?php if ( !isset($masuk) ) { ?>
      <a href="login1.php" class="btn btn-success ml-2">Masuk</a> 
        <?php }else{ ?>
          <div class="btn btn-light ml-2"><?php echo $username; ?></div>
      <?php } ?>
    </form>
  </div>
</nav>
  </div>
  <div class="jumbotron jumbotron-fluid">
    <div class="container text-center" >
  	 <img src="kamera.png" width="10%" class="rounded-circle img-thumbnail">
      <h1 class="display-4">KAMERA ANALOG</h1>
    <p class="lead">STMIK JAKARTA S1 SISTEM INFORMASI.</p>
  </div>
</div>
<div class="aaaa">
<section id="tentang" class="tentang">
<center> 
<div class="container">
  <div class="row mb-4">
    <div class="col text-center">
    </div>
  </div>
  <div class="row justify-content-center">
    <div class="col md-5 text-center">
  </div>
</center>
  </div>
</div>
</section>
</div>
<div class="card mb-3" style="max-width: 500px;">
  <div class="row no-gutters">
    <div class="col-md-4">
      <img src="WhatsApp Image 2020-02-25 at 19.29.57 copy.jpeg.jpg" class="card-img" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Kartu nama</h5>
        <h6>Moh Ahlis Nor Fuad
        <p>Project Manager 
        <br>mohahlisnoorfuad1@gmail.com
        <br>+62 8211 5451 298
        <br>  
        <br>PT Fino Technical</p>
      </div>
    </div>
  </div>
</div>
  

</div>
</div>
<footer class="bg-dark text-white">
  <div class="container">
    <div class="row">
      <div class="col text-center">
        <p>copyright 2020.</p>
      </div>
    </div>
  </div>
</body>
</html>
