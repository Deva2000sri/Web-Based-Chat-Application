<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="boot.css">
    <title>Webchat</title>
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

      #feedback{ 
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
<div class="container-fluid">
<h1>WEB BASED CHAT APPLICATION</h1></div>
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
      <ul class="dropdown-menu bg-warning" id="mydrop">
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
<form action="process/user_reg.php" method="post" enctype="multipart/form-data">
  <div class="form-group">
    <label for="name">Name</label>
    <input type="text" name="name" id="name" class="form-control" required>
  </div>
  <div class="form-group">
    <label for="name">Address</label>
    <input type="text" name="address" id="address" class="form-control" required>
  </div>
  <div class="form-group">
    <label for="name">Phone No</label>
    <input type="text" name="phone" id="phone" class="form-control" required maxlength="10">
  </div>
  <div class="image-upload-wrap form-group">
    <label for="name">Add Profile</label>
    <input class="file-upload-input form-control" type="file" name="imgg" id="imgg" required>
  </div>
  <div class="form-group">
    <label for="email">Email</label>
    <input type="email" name="email" id="email" class="form-control" required>
  </div>
  <div class="form-group">
    <label for="pswd">Password</label>
    <input type="password" name="pswd" id="pswd"class="form-control" required>
  </div>
  <div class="form-group text-center">

    <button class="btn btn-primary shadow">SUBMIT</button>
     <button type="reset" class="btn btn-success shadow">RESET </button>
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
    <input type="email" name="email" id="email" class="form-control" required>
  </div>
  <div class="form-group">
    <label for="pswd">Password</label>
    <input type="password" name="pswd" id="pswd"class="form-control" required>
  </div>
  <div class="form-group text-center">
    <button class="btn btn-primary shadow">LOGIN</button>
     <button type="reset" class="btn btn-success shadow">RESET </button>
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
<div class="container-fluid">
  <section id="home">
    <!-- This is home section -->
    <div class="carousel slide" id="myslide" data-ride="carousel">
      <ol class="carousel-indicators">
          <li data-target="#myslide" data-slide-to="0" class="active"></li>
          <li data-target="#myslide" data-slide-to="0"></li>
          <li data-target="#myslide" data-slide-to="0"></li>
      </ol>
      <div class="carousel-inner">
          <div class="carousel-item active">
          <img src="img2.jpg" class="w-100 d-block">
      </div>

        <div class="carousel-item">
        <img src="img4.jpg" class="w-100 d-block">
        </div>

        <div class="carousel-item">
        <img src="img8.jpg" class="w-100 d-block">
        </div>

      </div>

      <a class="carousel-control-prev" href="#myslide" data-slide="prev">
      <span class="carousel-control-prev-icon"></span>
      </a>
       <a class="carousel-control-next" href="#myslide" data-slide="next">
       <span class="carousel-control-next-icon"></span>
       </a>
    </div></section>
    <?php 
if(isset($_REQUEST['message']))
{
  echo "<script>alert('Login Failed.... Your Email or Password may be invalid. ')</script>";
}
if(isset($_REQUEST['check']))
{
  echo "<script>alert('please login first')</script>";
}
if(isset($_REQUEST['logout']))
{
  echo "<script>alert('logout succesfully')</script>";
}
if(isset($_REQUEST['contact']))
{
  echo "<script>alert('your contact request accepted')</script>";
}
if(isset($_REQUEST['feedback']))
{
  echo "<script>alert('Thankyou for your feedback :-)')</script>";
}
if(isset($_REQUEST['del']))
{
  echo "<script>alert('delete account successfully')</script>";
}


?>



      <section id="about">

    <div class="jumbotron jumbotron-fluid bg-warning text-center">
      <h1 class="display-3">About Us</h1>
      <p class="lead">This is our website for all users</p>
    </div>
    <div class="row">
      <div class="col-lg-6 col-md-6 col-sm-12 lead p-4 ">
       <b> A web chat is a system that enables users to communicate in real time using simply accessible web interfaces. It is a kind of web online chat distinguished by its 

simplicity and accessibility to users who don’t want to require the time to install and learn to use specialized chat software. It is a chatting application that will 

help to communicate with friends using the internet. This application is having AES encryption. In this chat application project, there is one entity namely the user. 
 User needs to register and obtain credentials to login onto the application. User can select the time from 5 sec to 10 sec or Infinite time. After receiving a text 

message, it will disappear within the selected time limit. Users can share files and they can also click pictures with a webcam. User needs to search for friends by 

using email id and contact number.</b>
       </div>
        <div class="col-lg-6 col-md-6 col-sm-12">
         <img src="im3.jpg" style="height: 400px;width: 100%">
      </div>
    </div>

    <div class="row">
      <div class="col-lg-6 col-md-6 col-sm-12">
         <img src="img7.jpg" style="height: 300px;width: 100%">
      </div>
       <div class="row">
      <div class="col-lg-6 col-md-6 col-sm-12 p-4">
        <div style="width: 250px height:300px;" class="bg-light border shadow-sm text-center">
          <h3 class="bg-warning">ADVANTAGES</h3>
        
         <P> We can have one-on-one chatting.</P>
    <hr>
        <P>It helps to connect long distance people.</P>
        <hr>
        <p>It helps to maintain safety of chat.</p>
        </div>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-12 p-4">
         <div style="width: 250px height:300px;" class="bg-light border shadow-sm text-center">
          <h3 class="bg-warning">DISADVANTAGES</h3>
         
<p>This application requires active <br>internet connection.</p>
<hr>
<p>User needs to put correct data or <br>else it behaves abnormally.</p>
        </div>
      </div>
       </div>
    </div>
  </section>
  <section id="service">
  	      <center><div style="background-color: #8B0000" class="col-lg-6 col-md-6 col-sm-12 p-4  border" id="feedback">
  	      	<h1 style="text-align: left;">Feedback form......</h1>
  	      </div>
  	      	<div style="background-color: #8B0000" class="col-lg-6 col-md-6 col-sm-12 p-4  border" id="feedback">
        <form action="process/response.php" method="post" enctype="multipart">
              <div class="form-group">
               <input type="text" name="name" id="name" placeholder="Enter name" class="form-control form-control-sm"><hr>
              </div> 
               <div class="form-group">
                <input type="email" name="email" id="email" placeholder="Enter Your Email" class="form-control  form-control-sm"><hr>
              </div> 
              <div class="form-group">
                <input type="text" name="subject" id="subject" placeholder="Enter Your feedback" class="form-control  form-control-sm"><hr>
              </div>
              <div class="form-group">
                <textarea class="form-control" name="address" id="address" placeholder="Enter Your Address"></textarea><hr>
              
      </div>
      <div class="form-group text-center">
                <button type="submit" class="btn btn-dark mr-2 shadow">SUBMIT</button>
                <input type="hidden" value="feedback" name="act" id="act">

              </div> 
          </form>  
    </div></center>
  	
  </section>
<section id="contact">
  
      <div class="jumbotron jumbotron-fluid bg-warning text-center">
      <h1 class="display-3">Contact</h1>
      <p class="lead">This is our website for all users</p>
      <div class="row">
      <div class="col-lg-6 col-md-6 col-sm-12" >
<div style="background-color: #8B0000" class=" border shadow-sm text-left text-white">
        <h2>Address:-XYZ Technical University Lucknow</h2><hr>
      <p>Mobile:- XXXXXXXX46,XXXXXXXX56</p><hr>
      <p>Email:- abc123@gmail.com</p><hr>
      <p>Social Icon:-</p><hr>
      <p><img src="map.png" style="height: 180px;width: 650px"></p> 
    </div>
      </div>
      
      <div style="background-color: #8B0000" class="col-lg-6 col-md-6 col-sm-12 p-4  border">
        <form action="process/response.php" method="post" enctype="multipart">
              <div class="form-group">
               <input type="text" name="name" id="name" placeholder="Enter name" class="form-control form-control-sm"><hr>
              </div> 
               <div class="form-group">
                <input type="email" name="email" id="email" placeholder="Enter Your Email" class="form-control  form-control-sm"><hr>
              </div> 
              <div class="form-group">
                <input type="text" name="subject" id="subject" placeholder="Enter Your subject" class="form-control  form-control-sm"><hr>
              </div>
              <div class="form-group">
                <textarea class="form-control" name="address" id="address" placeholder="Enter Your Address"></textarea><hr>
              
      </div>
      <div class="form-group text-center">
                <button type="submit" class="btn btn-dark mr-2 shadow">SUBMIT</button>
                <input type="hidden" value="save" name="act" id="act">

              </div> 
          </form>  
    </div>
  </div>
</div>
  </section>
  

 <script src="boot1.js"></script>
    <script src="boot2.js"></script>
    <script src="boot3.js"></script>
  </body>
</html>