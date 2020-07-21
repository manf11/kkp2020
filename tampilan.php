
<title>Halaman Sukses Login</title>

<link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
      	<div class="container">
        <a class="nav-link" href="">beranda<span class="sr-only">(current)</span></a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="kontakkami.php">kontak kami</a></li>
                <li class="nav-item">
        <?php if (isset($admin)) { ?>
        <a class="nav-link" href="tambahartikel.php">tambah artikel</a></li>
       
   		 <?php } ?>
                <li class="nav-item">
        <?php if (isset($admin) || isset($user )) { ?>
        <a class="nav-link" href="logout.php">keluar</a></li>
    	<?php } ?>
    </div>
    <form action="" method="GET" class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" name="cari">
      <button class="btn btn-outline-success my-2 my-sm-0" name="tmbcari" type="submit">Search</button>
      <?php if ( !isset($masuk) ) { ?>
      <a href="login1.php" class="btn btn-danger ml-2">Masuk</a> 
  	<?php }else{ ?>
  	  <div class="btn btn-light ml-2"><?php echo $username; ?></div>
  	<?php } ?>
    </form>
  </div>
</nav>
  </div>
  <div class="jumbotron jumbotron-fluid">
  <div class="container text-center" >

  	<img src="logo.png" width="10%" class="rounded-circle img-thumbnail">
    <h1 class="display-4">WEB KELOMPOK 4</h1>
    <p class="lead">This is a modified jumbotron that occupies the entire horizontal space of its parent.</p>
  </div>
</div>
</div>
<div class="row">
	<?php while ($data=mysql_fetch_array($tampil)){ ?>
	<div class="col-3">
		<div class="card text-right" style="width: 18rem;">
		  <img class="card-img-top"src="<?="gambar/".$data['gambar']?>" alt="card-img-cap" width="100" height="100">
		  <div class="card-body">
		    <h5 class="card-title"><?php echo $data['judul_post']?></h5>
		    <p class="card-text"><?php echo substr($data['isi_post'],0,10)?></p>
		    <a href="tampil.php" class="btn btn-primary">baca selengkapnya</a>		
		    <?php if (isset($admin)) { ?>
		  	<a href="formedit.php?id=<?=$data['id_post'] ?>" class="btn btn-primary">sunting</a>	 
			<?php } ?>
			<a href="hapus.php?id=<?=$data['id_post'] ?>" class="btn btn-primary">hapus</a>
		  </div>
		</div>
	</div>
	<?php } ?>
</div>
<div class="container">
<section id="portofolio" class="portofolio bg-light">
	<div class="row text-center">
		<div class="col text-center">
