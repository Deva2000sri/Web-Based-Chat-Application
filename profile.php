<?php
ob_start();
session_start();
//print_r($_SESSION);


include("includes/dbconnection.php");
if($_SESSION['chatid']=='')
{
  $num=0;
  
header("location:index.php?check=$num");
}


global $con;
$sql="SELECT  * FROM users WHERE id_no='$_SESSION[chatid]'";
$rs=mysqli_query($con,$sql) or die(mysqli_error($con));
$data=mysqli_fetch_assoc($rs);
print_r($data);


?>


<!DOCTYPE html>
<html>
	<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="boot.css">
    <title>view</title>
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
      input{
      position: relative;
      left: 50px;
      line-height: 35px;
      width: 280px;
      border-radius: 6px;
      padding: 0 22px;
      font-size: 16px;
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
  <body style="background-image: url(grid.jpg); background-size: 800px 800px" >

/* <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
<a href="" class="navbar-brand"><img src="image/logo.jpg" style="height: 80px;width: 80px;" class="rounded-circle"></a>
<h1>WEB BASED CHAT APPLICATION</h1>
<button class="navbar-toggler" data-toggle="collapse" data-target="#mynav">
  <span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="mynav">
  <ul class="navbar-nav ml-auto  mr-5">
    
    <li class="nav-item pr-2 dropdown">
      <a href="" class="nav-link dropdown-toggle" data-toggle="dropdown" data-target="#mydrop">User</a>
      <ul class="dropdown-menu" id="mydrop">
        <li class="dropdown-item">
      <a onclick="return confirm('Are you sure you want to logout?');" href='process/logout.php'>LogOut</a>
        </li>
      </ul>
    </li>
  </ul>
</div>
  </nav>
<h1>hsckjashuicx</h1>
<h1>xxxxxxxxxxxxxxxx</h1>
<div class="container-fluid bg "> 
<div class="row">
      <div  class=" col-md-3">
        <div class="jumbotron">
        <div class=" list-group ">
          
        <a href="chating.php"><img src="image/back.png" class="img img-responsive" style="width: 50px ; height: 50px;border-radius:50%"></a>
        <center><img src="image/profile/<?php echo $data['img'];?>" class="img img-responsive" style="width: 250px;  border-radius:50%">
          <h2 style="background: black; color: white; font-size: 40px; width: 100%;"><?php echo "$data[name]";?></h2> 
          <a href="#profile" class="list-group-item"><i class="glyphicon glyphicon-user"></i>Profile</a>
          <a href="#image" class="list-group-item"><i class="glyphicon glyphicon-picture"></i>Image</a>
          <a href="#friends" class="list-group-item"><i class="glyphicon glyphicon-envelope"></i>Friends</a>
          <a  onclick="return confirm('Are you sure you want to logout?');" href="process/delete.php" class="list-group-item"><i class="glyphicon glyphicon-trash"></i>Delete Account</a>
          </center>
        </div>
        </div>
    </div>
    <div class= " col-md-9 bg-light">
<section id="profile">
  <div class="jumbotron jumbotron-fluid bg-warning text-center h-10">
      <h1 class="display-5">User Profile</h1>
    </div>
  <form action="process/user_reg.php" method="post" enctype="multipart/form-data">
    <?php
    global $con;
    $sql="SELECT  * FROM users WHERE id_no='$_SESSION[chatid]'";
    $rs=mysqli_query($con,$sql) or die(mysqli_error($con));
    $data=mysqli_fetch_assoc($rs);?>

    <center><img src="image/profile/<?php echo $data['img'];?>" class="img img-responsive" style="width: 250px;  border-radius:50%">
  <fieldset class="border border-danger p-5 mt-4 w-50 " style="border-radius: 20px; background-color:#00BFFF;">
             <legend class="text-center border border-primary bg-dark text-white" style="width: 200px; border-radius: 15px">Your Personal Information</legend>


<div>
  <table>
  	
    <tr><th>Name</th><td><input type="text" name="name" value="<?php echo $data['name'];?>" readonly></td></tr><br>
     <tr><th>Address</th><td><input type="text" name="address" value="<?php echo $data['address'];?>" readonly></td></tr>
      <tr><th>Phone No</th><td><input type="text" name="phone" value="<?php echo $data['phone'];?>" readonly></td></tr>
       <tr><th>Email</th><td><input type="text" name="email" value="<?php echo $data['email'];?>" readonly></td></tr>
        <tr><th>Password</th><td><input type="text" name="pswd" value="<?php echo $data['pswd'];?>" readonly></td></tr>

        <tr><th>img</th><td><input type="text" name="imgg" id="imgg" value="<?php echo $data['img'];?>" readonly></td></tr>
        <tr><td align="center"> <button class="btn btn-danger shadow ">
      <a href="edit.php">Edit</button></td></tr>
      <input type="hidden" name="act" id="act" value="edit">
  </table>
</div>
</fieldset></center>
</section>
   
   <section id="image">
    <div class="jumbotron jumbotron-fluid bg-warning text-center">
      <h1 class="display-5">Images</h1>
    </div>
</section>   
<section id="friends">
    <div class="jumbotron jumbotron-fluid text-center">
      <h1 class="display-5"><u>Friends List</u></h1>
      <center><div class="my-5" style="justify-content: space-around; flex-wrap: wrap; background-color: pink; width: 500px ; border-radius: 25px">
  <?php
  global $con;
  $sql2="SELECT * FROM users WHERE id_no='$_SESSION[chatid]'";
  $rs1=mysqli_query($con,$sql2) or die(mysqli_error($con));
   $data=mysqli_fetch_assoc($rs1);
   //print_r($data['friends']);
   if($data['friends'])
   {
    $arr=explode(",",$data['friends']);
    //print_r($arr);
    foreach ($arr as $key => $value) 
    {
      $sql="SELECT * FROM users WHERE id_no='$value'";
      $rs=mysqli_query($con,$sql) or die(mysqli_error($con));
      $data1=mysqli_fetch_assoc($rs);
      echo $data1['name'];
      echo "<br>"; 
    }
  
    }
  ?>
</div></center>
    </div>
    
</section>   
</div>
</div>
</div>
<script src="boot1.js"></script>
    <script src="boot2.js"></script>
    <script src="boot3.js"></script>


</body>
</html>