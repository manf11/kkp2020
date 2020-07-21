<?php
session_start();
if(!isset($_SESSION['username'])) {
   header('location:login1.php'); 
} else { 
   $username = $_SESSION['username']; 
}
?>

<title>Halaman Sukses Login</title>

<div align='center'>
   Selamat Datang admin, <b><?php echo $username;?></b> <a href="logout.php"><b>Logout</b></a>
</div>
<div class="menu-wrap">
	<ul>
		<li><a href="beranda.html">Beranda</a></li>
		<li><a href="beranda.html">ducati</a></li>
		<li><a href="beranda.html">yamaha</a></li>	
		<li><a href="beranda.html">honda</a></li>	
		<li><a href="tentang.html">Tentang Kami</a></li>
		<li><a href="kontak.html">Kontak Kami</a>
			<li><a href="logout.php">logout</a></li>

		</li>
	</ul>
  </div>
</body>
</html>