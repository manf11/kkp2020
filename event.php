<?php include"koneksi.php";
	
$tampil=mysql_query("SELECT * FROM tbl_event",$conn);
if (isset($_GET['tmbcari'])) {
	$txtcari = $_GET['cari'];
	$tampil = mysql_query("SELECT * FROM tbl_event where judul_ev LIKE '%$txtcari%'");
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
    <!DOCTYPE html>
       <html>
        <head>
       <link rel="stylesheet" href="css/bootstrap.min.css" integrity=" sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
      <link rel="stylesheet" type="text/css" href="style1.css">
    </head>

<title>KAMERA ANALOG</title>
<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
      	<div class="container">
        <a class="nav-link" href="index.php" >Beranda<span class="sr-only">(current)</span></a>
      </li>
    <li class="nav-item">
       <a class="nav-link" href="kontakkami.php">Kontak kami</a></li>
       <li class="nav-item">
        <a class="nav-link" href="event.php">Event</a></li>
        <li class="nav-item">
      <a class="nav-link" href="tutorial.php">Tutorial</a></li>
         <li class="nav-item">
      <?php if (isset($admin)) { ?>
        <li class="nav-item">
   <a class="nav-link" href="tambahartikel.php">Tambah artikel</a></li>
       <?php } ?>
       <li class="nav-item">
      <?php if (isset($admin)) { ?>
   <a class="nav-link" href="tambahevent.php">Tambah event</a></li>
   		 <?php } ?>
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

                   <li class="nav-item">
        <?php if (isset($admin) || isset($user )) { ?>
        <a class="nav-link" href="logout.php">Keluar</a></li>
    	<?php } ?>
    </div>
    <form action="" method="GET" class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Cari judul" name="cari">
      <button class="btn btn-outline-secondary my-2 my-sm-0" name="tmbcari" type="submit">Cari</button>
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
</div>

<div class="row">
	<?php while ($data=mysql_fetch_array($tampil)){ ?>
	<div class="col-3">
		<div class="card text-right" style="width: 18rem;">
		  <img class="card-img-top"src="<?="gambar/".$data['gambar']?>" alt="card-img-cap" width="200" height="200">
		  <div class="card-body">
		    <h5 class="card-title"><?php echo $data['judul_ev']?></h5>
		    <p class="card-text"><?php echo substr($data['isi_ev'],0,50)?></p>
		    <a href="tampileve.php?id=<?= $data['id_ev'] ?>" class="btn btn-info">baca selengkapnya</a>		
		    <?php if (isset($admin)) { ?>
		  	<a href="formeditev.php?id=<?=$data['id_ev'] ?>" class="btn btn-secondary">sunting</a>	 
			<?php } ?>
			<?php if (isset($admin)) { ?>
			<center><a href="hapusevent.php?id=<?=$data['id_ev'] ?>" class=" btn btn-danger mt-2">hapus</a></center>
			<?php } ?>
		  </div>
		</div>
	</div>
	<?php } ?>
</div>
<div class="container">
<section id="portofolio" class="portofolio bg-light">
	<div class="row text-center">
		<div class="col text-center">
		
</div>
</div>
</div>
</div>