<?php
   session_start();
   if(isset($_SESSION['username'])) {
   header('location:index.php'); }
   require_once("koneksi.php");
?>
<html>
<head>
  <title>Transparent Login Form with Bootstrap 4</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
  <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  <div class="modal-dialog text-center">
  <div class="col-sm-8 main-selection">
  <div class="modal-content"></div>


  <div class="col-12">
  <img src="logo.png"></div>

  <form class="col-12">
    <div class="form-group">
      <input type="text" class="formcontrol" placeholder="enter username"></div>
      <div class="form-group">
      <input type="password" class="formcontrol" placeholder="enter password"></div>
      <button type="submit" class="btn"><i class="fas fa-sign-in-alt"></i>LOGIN</button>
      </form>
      <div class="col-12 forgot">
        <a href="#">forgot</a>
      </div>
</div>
</div>
</div>
</tbody>
</html>


body{
  font-family: sans-serif;
  background: url(mountain.jpg) no-repeat;
  background size: cover: 
}
.main-selection{
  margin: 0 auto;
  margin-top: 130px;
  padding: 0;
}
.modal-content{
  background-color: #3b4652;
  opacity: .95;
  padding: 0 18px;
  box-shadow: 0px 0px 3px #848484;
}
.user-img{
  margin-top: -50px;
  margin-bottom: 35px;
}
.user-img img{
  height: 100px;
  width: 100px;
  border-radius: 5px;
}
.form-group{
  margin-bottom: 25px;
}
.form-group input{
height: 42px;
border-radius: 5px;
border: 0;
font-size: 18px;
}
.form-group::before{
  font-family: 'Font Awesome\ 5 Free';
  content: "\f007";
  position: absolute;
  font-size: 22px;
  color: #555e60;
  left: 28px;
  padding-top: 4px;
}
.form-group:last-of-type::before{
  content: "\f023";
}
button{
  width: 40%;
  margin: 5px 0 25px;
}
.btn{
  background-color: #27c2a5;
  color: #fff;
  font-size: 19px;
  padding: 7px 14px;
  border-radius: 5px;
  border-bottom: 4px solid $219882;
}
.btn:hover, .btn:focus{
  background-color: #25a890!important;
  border-bottom: 4px solid #25a890!important;
}
.svg-inline--fa{
  font-size: 20px;
  margin-right: 7px;
}
.forgot{
  padding: 5px 0 25px;
}
.forgot a{
  color: #c2fbfe;
}


body{
  font-family: sans-serif;
  background: url(mountain.jpg) no-repeat;
  background size: cover: 
}
.main-selection{
  margin: 0 auto;
  margin-top: 130px;
  padding: 0;
}
.modal-content{
  background-color: #3b4652;
  opacity: .95;
  padding: 0 18px;
  box-shadow: 0px 0px 3px #848484;
}
.user-img{
  margin-top: -50px;
  margin-bottom: 35px;
}
.user-img img{
  height: 100px;
  width: 100px;
  border-radius: 5px;
}
.form-group{
  margin-bottom: 25px;
}
.form-group input{
height: 42px;
border-radius: 5px;
border: 0;
font-size: 18px;
}
.form-group::before{
  font-family: 'Font Awesome\ 5 Free';
  content: "\f007";
  position: absolute;
  font-size: 22px;
  color: #555e60;
  left: 28px;
  padding-top: 4px;
}
.form-group:last-of-type::before{
  content: "\f023";
}
button{
  width: 40%;
  margin: 5px 0 25px;
}
.btn{
  background-color: #27c2a5;
  color: #fff;
  font-size: 19px;
  padding: 7px 14px;
  border-radius: 5px;
  border-bottom: 4px solid $219882;
}
.btn:hover, .btn:focus{
  background-color: #25a890!important;
  border-bottom: 4px solid #25a890!important;
}
.svg-inline--fa{
  font-size: 20px;
  margin-right: 7px;
}
.forgot{
  padding: 5px 0 25px;
}
.forgot a{
  color: #c2fbfe;
}
