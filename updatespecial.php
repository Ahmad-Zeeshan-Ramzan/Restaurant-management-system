<?php
   
   include ('connection.php');
   if($_SERVER['REQUEST_METHOD']=='POST')
{
if(isset($_POST['update']))
	{
	$u_id=$_POST['id'];
	 $u_name=$_POST['name'];
     $u_price=$_POST['price'];
     $u_des=$_POST['description'];
	 
	$filename =strtolower($_FILES["uploadfile"]["name"]); 
	$tmp=explode('.', $filename ); 
	$file_ext= end($tmp);   

    if ($file_ext=='jpg' OR $file_ext=='png') 
    {
        

    $tempname = $_FILES["uploadfile"]["tmp_name"];

    $folder = "images/".$filename;
    $image = $folder;

	$update ="update special SET NAME='$u_name', PRICE='$u_price', DESCRIPTION='$u_des', image='$image' WHERE id='$u_id'";
	
    mysqli_query($db_connection, $update);
	
	if (move_uploaded_file($tempname, $folder))
	{
		header('location: viewspecial.php');
	}


}
	}
}


?>