<?php
include('connection.php');
if($_SERVER['REQUEST_METHOD']=='POST')
{
	$f_name=$_POST['name'];
	$f_email=$_POST['email'];
	$f_phone=$_POST['phone'];
	$f_date=$_POST['date'];
	$f_time=$_POST['time'];
	$f_person=$_POST['person'];
	$f_message=$_POST['message'];
	
	$query="INSERT INTO reservation(NAME, EMAIL, PHONE, DATE, TIME, PERSON, MESSAGE)VALUES('$f_name', '$f_email', '$f_phone', '$f_date', '$f_time', '$f_person', '$f_message')";
	if(mysqli_query($db_connection, $query))
	{
		
		echo"data saved successfully.";
		
	}
	
	else
	{
		
		echo"data not saved";
		
	}
}

?>