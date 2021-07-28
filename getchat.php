<?php

session_start();
include("includes/dbconnection.php");

  //print_r($_REQUEST);
//die;
//echo "dddd";
// OR (s_id='$_REQUEST[id]' AND  r_id='$_SESSION[chatid]')

 $sql2="SELECT * FROM tbl_chat WHERE (s_id='$_REQUEST[chat_id]' AND r_id='$_REQUEST[idd]') OR (s_id='$_REQUEST[idd]' AND  r_id='$_REQUEST[chat_id]') ";
	$rs2=mysqli_query($con,$sql2)or die(mysqli_error($con));
	echo"<table>";
	while($row=mysqli_fetch_assoc($rs2))
	{ 

	//print_r($row);
	echo"<hr><tr><td style='background: lavender;'>";

	if($row['s_id']==$_SESSION['chatid']){
	echo"<b><font color='red'>me:".$row['msg']."</font><br>";
	echo"<br>";
	}
	else
	{
	echo"<b><font color='blue'>@$_REQUEST[name]:".$row['msg']."</font><br>";
	}
}

?>




