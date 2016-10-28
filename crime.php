<?php
	$ser="localhost";
	$user="saruproot";
	$pass="saruproot";
	$db="crime report la";
	$conn=mysql_connect($ser,$user,$pass) or die("Error in server");
	mysql_select_db($db,$conn);
	$query="insert into crime values (".$_POST['element_1'].",'".$_POST['element_2']."')";
	$result=mysql_query($query);
	if($result)echo "crime added successfully";
		else echo "operation failed";
?>