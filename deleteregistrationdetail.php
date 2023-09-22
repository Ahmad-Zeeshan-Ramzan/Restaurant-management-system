<?php

include('connection.php');
$d_id=$_GET['id'];
$delete="delete from admin WHERE id='$d_id'";

if(mysqli_query($db_connection,$delete))
{
	header('location: registrationdetail.php');
}
else
{
	echo"not deleted.";
}

?>