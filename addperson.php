<?php
	$ser="localhost";
	$user="saruproot";
	$pass="saruproot";
	$db="crime report la";
	$conn=mysql_connect($ser,$user,$pass) or die("Error in server");
	mysql_select_db($db,$conn);
	$type=$_POST['element_5'];
	if($_POST['element_4'] == 1)$gender="male";
	else if($_POST['element_4'] == 1)$gender="female";
	else $gender="other";
	if($type==1){
		$query="insert into victim values ('".$_POST['element_2']."','".$_POST['element_1_1'].$_POST['element_1_2']."',".$_POST['element_3'].",'".$gender."')";
		$result=mysql_query($query);
		if($result)echo "victim added successfully";
		else echo "operation failed";

	}else{
		$query="insert into criminal values ('".$_POST['element_2']."','".$_POST['element_1_1'].$_POST['element_1_2']."',".$_POST['element_3'].",'".$gender."')";
		$result=mysql_query($query);
		if($result)echo "criminal added successfully";
		else echo "operation failed";
	}
?>