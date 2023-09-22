<?php

include('connection.php');
$d_id=$_GET['id'];
$delete="delete from special WHERE id='$d_id'";

if(mysqli_query($db_connection,$delete))
{
	header('location: viewspecial.php');
}
else
{
	echo"not deleted.";
}

?>