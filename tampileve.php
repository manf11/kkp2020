<?php include"koneksi.php";
session_start();
$id= $_GET['id'];
$tampil=mysql_query("SELECT * FROM tbl_event",$conn);
if (isset($_GET['tmbcari'])) {
  $txtcari = $_GET['cari'];
  $tampil = mysql_query("SELECT * FROM tbl_event where judul_event LIKE '%$txtcari%'");
}
$id_user=$_SESSION['username'];
$testlike = mysql_query("SELECT * FROM tbl_like WHERE id_user = '$id_user' AND id_post ='$id'");
if (mysql_num_rows($testlike) > 0) {
  $liked=True;
}
?>

<?php

if(isset($_SESSION['masuk'])) {  
   $username = $_SESSION['username'];
   $masuk = 'test';
   if ($_SESSION['level'] == "admin") {
    $admin = '';
   }else{
    $user = '';
   }
}
        $id=$_GET['id'];
        $query_mysql = mysql_query("SELECT* FROM tbl_event WHERE id_ev='$id'", $conn);
        $nomor=1;
        $data=mysql_fetch_array($query_mysql);
        $suka = $data['suka'];
        $lihat = $data['lihat'] +1;
        mysql_query("UPDATE tbl_event SET lihat='$lihat' WHERE id_ev='$id'", $conn);
        if (isset($_POST['tmbkom'])) {
          $id_posting=$id;
          $user_komen=$_SESSION['username'];
          $isi_komen=$_POST['komentar'];

          $simpan="INSERT INTO tbl_komen SET 
            id_posting='$id_posting',
            user_komen='$user_komen',
            isi_komen='$isi_komen'";
          $input=mysql_query($simpan);
        }

        if (isset($_POST['batalsuka'])) {
          $id_user=$_SESSION['username'];
          $id_post=$id;

          $simpann="DELETE FROM tbl_like WHERE id_post='$id_post' AND id_user='$id_user'";
          $input=mysql_query($simpann);
          $batalsuka--;
          mysql_query("UPDATE tbl_event SET suka='$batalsuka' WHERE id_ev='$id'", $conn);
        }

        if (isset($_POST['suka'])) {
          $id_user=$_SESSION['username'];
          $id_post=$id;

          $simpann="INSERT INTO tbl_like SET 
            id_user='$id_user',
            id_post='$id_post'";
          $input=mysql_query($simpann);
          $suka++;
        mysql_query("UPDATE tb_post SET suka='$suka' WHERE id_post='$id'", $conn);
        }
$tampilk=mysql_query("SELECT * FROM tbl_komen WHERE id_posting = '$id'", $conn);
?>

<title>DETAIL KAMERA ANALOG</title>

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
        <?php if (isset($admin)) { ?>
        <a class="nav-link" href="tambahartikel.php">Tambah Artikel</a></li>
       <?php } ?>
                <li class="nav-item">
        <?php if (isset($admin) || isset($user )) { ?>
        <a class="nav-link" href="logout.php">Keluar</a></li>
      <?php } ?>
    </div>
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
<form action="login1.php">
      <h1 class="display-4 animated rubberBand">DETAIL POSTINGAN</h1>
      <p class="lead">Postingan ini di post oleh :</p>
        <p><b><?= $data['id_author']; ?><br><img src="kalender.jpg" width="25" height="25"></b>  <small class="text-monospace"><?= $data['tgl_ev']; ?></small></p>
      <hr class="my-7">
    </form>
<section id="tentang" class="tentang">
<div class="container">
  <div class="row mb-4">
    <div class="col text-center">
      <h3>Detail Kamera Analog</h3>
    </div>
  </div>
    </div>

    <div class="kotak text-center">

  <div class="float-right">
  <img src="mata1.png" width="55" height="35"><?=$data['lihat']?></div>
    <div class="float-right">
  <img src="like.png" width="45" height="35"><?=$data['suka']?></div>

      <img class="img-thumbnail" src="<?= $data['gambar'] ?>" width="400" height="400">
      <h1><?= $data['judul_ev'] ?></h1>
      <div class="container"><p><?= $data['isi_ev'] ?></p></div>
    </div>
  </div>
</div>
</section>
</div>
</div>
  </form><footer class="bg-dark text-white">
  <div class="container">
    <div class="row">
      <div class="col text-center">
        <p>copyright 2020.</p>
      </div>
    </div>
  </div>
</body>
</html>
