<?php

include('connection.php');
$d_id=$_GET['id'];
$delete="delete from reservation WHERE id='$d_id'";

if(mysqli_query($db_connection,$delete))
{
	header('location: viewreservation.php');
}
else
{
	echo"not deleted.";
}

?>