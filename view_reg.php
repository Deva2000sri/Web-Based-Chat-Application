<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="boot.css">
    <title>Website</title>
    <style>
      *{
        margin:0px;padding:0px;box-sizing: border-box;
      }
      html
      {
        scroll-behavior: smooth;
      }
      .carousel-inner img
      {
        height: 600px;

      }
      .container-fluid
      {
        padding:0px;
      }
      .navbar{
        height: 100px; 
        background-image: linear-gradient(-90deg,brown,orange);
      }
      .modal-header
      {
       background-color: orange; 
      }
      .modal-content
      {
       background-image: linear-gradient(brown,orange); 
      }

    </style>
  </head>
  <body style="overflow-x: hidden" >

 <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
<a href="" class="navbar-brand"><img src="image/logo.jpg" style="height: 80px;width: 80px;" class="rounded-circle"></a>
<h1>WEB BASED CHAT APPLICATION</h1>
<button class="navbar-toggler" data-toggle="collapse" data-target="#mynav">
  <span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="mynav">
  <ul class="navbar-nav ml-auto  mr-5">
    <li class="nav-item pr-2">
      <a href="#home" class="nav-link">Home</a>
    </li>
    <li class="nav-item pr-2">
      <a href="#about" class="nav-link">About</a>
    </li>
    <li class="nav-item pr-2">
      <a href="#service" class="nav-link">Feedback</a>
    </li>
    <li class="nav-item pr-2">
      <a href="#contact" class="nav-link">Contact</a>
    </li>
    <li class="nav-item pr-2 dropdown">
      <a href="" class="nav-link dropdown-toggle" data-toggle="dropdown" data-target="#mydrop">User</a>
      <ul class="dropdown-menu" id="mydrop">
        <li class="dropdown-item">
      <a href="" class="nav-link text-dark" data-toggle="modal" data-target="#reg">Registration</a>
        </li>
        <li class="dropdown-item">
      <a href="" class="nav-link text-dark" data-toggle="modal" data-target="#login">Login</a>
        </li>
      </ul>
    </li>
  </ul>
</div>
  </nav>

<div class="modal" id="reg">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
       <h1> <div class="modal-title">Registration Form</div></h1>
  <button class='btn btn-light' class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
<form action="process/user_reg.php" method="post" enctype="multipart/from-data">
  <div class="form-group">
    <label for="name">Name</label>
    <input type="text" name="name" id="name" class="form-control">
  </div>
  <div class="form-group">
    <label for="name">Address</label>
    <input type="text" name="address" id="address" class="form-control">
  </div>
  <div class="form-group">
    <label for="name">Phone No</label>
    <input type="text" name="phone" id="phone" class="form-control">
  </div>
  <div class="image-upload-wrap form-group">
    <label for="name">Add Profile</label>
    <input class="file-upload-input form-control" type="file" onchange="readURL(this)" accept="image/*" name="img" id="img">
  </div>
  <div class="form-group">
    <label for="email">Email</label>
    <input type="text" name="email" id="email" class="form-control">
  </div>
  <div class="form-group">
    <label for="pswd">Password</label>
    <input type="password" name="pswd" id="pswd"class="form-control">
  </div>
  <div class="form-group text-center">

    <button class="btn btn-primary">SUBMIT</button>
    <input type="hidden" name="act" id="act" value="save">
  
  </div>
</form>

      </div>
      <div class="modal-footer">
        <button class='btn btn-light' class="close" data-dismiss="modal">CLOSE</button>
      </div>
    </div>
  </div>
</div>

<div class="modal" id="login">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <div class="modal-title">Login</div>
  <button class='btn btn-light' class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
<form action="process/user_reg.php" method="post" enctype="multipart/from-data" >

  <div class="form-group">
    <label for="email">Email</label>
    <input type="text" name="email" id="email" class="form-control">
  </div>
  <div class="form-group">
    <label for="pswd">Password</label>
    <input type="password" name="pswd" id="pswd"class="form-control">
  </div>
  <div class="form-group">
    <label for="time">Select Session Time</label>
    <input type="time" name="time" id="time"class="form-control">
  </div>
  <div class="form-group text-center">
    <button class="btn btn-primary ">LOGIN</button>
     <input type="hidden" name="act" id="act" value="entry">
  </div>
</form>

      </div>
      <div class="modal-footer">
        <button class='btn btn-light' class="close" data-dismiss="modal">CLOSE</button>
      </div>
    </div>
  </div>
</div>
 <script src="boot1.js"></script>
    <script src="boot2.js"></script>
    <script src="boot3.js"></script>
  </body>
</html>