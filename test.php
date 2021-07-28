
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="boot.css">


<!-- Custom Css -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



	<title>chat page</title>
</head>
<body style="background-image: url(grid.jpg); background-size: 800px 800px">
	<a href="chating.php"><img src="image/back.png" class="img img-responsive" style="width: 50px ; height: 50px;border-radius:50%"></a>
	<center><div class= "w-50"style="background-color: pink; width: 700px ; height:50px; text-align:left"><img src="image/profile/<?php echo $_REQUEST['img'];?>" class="img img-responsive" align="left"  style="width: 50px;  border-radius:50% ">
        <?php echo"<h1>".$_REQUEST['name']."</h1>";?></div>
	<div class="bg-light w-50" id="getdata">



<form action="#" method="post" enctype="multipart/form-data">
	<input type="textarea" id="msg" name="msg" placeholder="Type a message">
	<button type="submit" class="btn btn-danger sub" id="send">Send</button>
	<input type="hidden" value="save" id="act" name="act">
	</form>


<?php
ob_start();
session_start();

//print_r($_SESSION);
//print_r($_REQUEST);

include("includes/dbconnection.php");
if($_SESSION['chatid']=='')
{
  $num=0;
  
header("location:index.php? check=$num");
}

if('POST'==$_SERVER['REQUEST_METHOD']&& isset($_POST['act']))
{
global $con;
$sql="SELECT serial_no FROM tbl_chat ORDER BY serial_no DESC LIMIT 1";
$rs=mysqli_query($con,$sql)or die(mysql_error($con));
$data=mysqli_fetch_assoc($rs);
//print_r($data);
if($data['serial_no']>0)
 {
	$s_no=$data['serial_no']+1;
	$sql1="INSERT INTO tbl_chat(`s_id` ,`r_id` ,`serial_no` ,`msg`)
    values('$_SESSION[chatid]','$_REQUEST[id]','$s_no','$_REQUEST[msg]')";
    $rs1=mysqli_query($con,$sql1) or die(mysqli_error($con));
 }
}

?>

<?php

//chtt = $_SESSION['chatid']; 
 // echo "<script> alert('$chtt'); </script>";
?>



<?php

$sql2="SELECT * FROM tbl_chat WHERE (s_id='$_SESSION[chatid]' AND r_id='$_REQUEST[id]') OR (s_id='$_REQUEST[id]' AND  r_id='$_SESSION[chatid]')";
	$rs2=mysqli_query($con,$sql2)or die(mysqli_error($con));
	echo"<table id='chat_table'>";
	while($row=mysqli_fetch_assoc($rs2))
	{ 

	//print_r($row);
	echo"<tr><td>";

	if($row['s_id']==$_SESSION['chatid']){
	echo"<b><font color='red'>me:".$row['msg']."</font><br>";
	echo"<br>";}
	else{
	echo"<b><font color='blue'>$_REQUEST[name]:".$row['msg']."</font><br>";	
	}

}


?>








	

</div></center>

	
	<script type="text/javascript" src="boot1.js"></script>
    <script type="text/javascript" src="boot2.js"></script>
    <script type="text/javascript" src="boot3.js"></script>
    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript"></script>
		
		 	
		 <script>

function yourFunction(){
	
    // do whatever you like here
	//$username='$_SESSION[chatid]';
	cht();
    setTimeout(yourFunction, 5000);
}

 yourFunction();

function cht()
{
	
	var fff ='<?php echo $_SESSION['chatid']; ?>';
	var r_idd ='<?php echo $_REQUEST['id']; ?>';
	var nam ='<?php echo $_REQUEST['name']; ?>';

	 if(fff.length==7)
	 {
	// alert(fff);
	 var dataString = 'chat_id='+ fff+'&idd='+r_idd+'&name='+nam;
		$.ajax
		({
			type: "POST",
			url: "getchat.php",
			data: dataString,
			cache: false,
			success: function(data)
			{
				//alert(data);
				$("#chat_table").html(data);
			} 
		});
	 }
	 else
	 {
	 alert("fail");
	 }

}


</script>


</body>
</html>