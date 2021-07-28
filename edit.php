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
	<title>chat page</title>
</head>
<body style="background-image: url(grid.jpg); background-size: 800px 800px">
<center><img src="image/profile/<?php echo $data['img'];?>" class="img img-responsive" style="width: 250px;  border-radius:50%">
  <fieldset class="border border-danger p-5 mt-4 w-50 bg-success" style="border-radius: 20px">
             <legend class="text-center border border-primary bg-dark text-white" style="width: 200px; border-radius: 15px">Your Personal Information</legend>


<form action="process/user_reg.php" method="post" enctype="multipart/form-data">
<div>
  <table>
    <tr><th>Name</th><td><input type="text" name="name" value="<?php echo $data['name'];?>"></td></tr><br>
     <tr><th>Address</th><td><input type="text" name="address" value="<?php echo $data['address'];?>"></td></tr>
      <tr><th>Phone No</th><td><input type="text" name="phone" value="<?php echo $data['phone'];?>"></td></tr>
       <tr><th>Email</th><td><input type="text" name="email" value="<?php echo $data['email'];?>"></td></tr>
        <tr><th>Password</th><td><input type="text" name="pswd" value="<?php echo $data['pswd'];?>"></td></tr>
        <tr><th>select image</th><td><input type="file" name="img2" id="img2"></td></tr>

        <tr><td align="center"> <button class="btn btn-primary shadow ">
      Update</button></td></tr>
      <input type="hidden" name="act" id="act" value="edit">
  </table>
</div>
</form>
</fieldset></center>
</section>