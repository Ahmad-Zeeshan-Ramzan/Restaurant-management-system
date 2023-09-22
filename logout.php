<?php

include('connection.php');
session_destroy();

if(!isset($_SESSION['user']))
{
	
	header('location: index.php');
}
else
	{
		echo"session is set so you can't go there";	
	}
?>