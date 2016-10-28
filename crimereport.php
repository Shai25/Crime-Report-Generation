<?php
	$ser="localhost";
	$user="saruproot";
	$pass="saruproot";
	$db="crime report la";
	$conn=mysql_connect($ser,$user,$pass) or die("Error in server");
	mysql_select_db($db,$conn);
	echo 'hello';
	$query="insert into casereport values (".$_POST['element_1'].",".$_POST['element_2'].",".$_POST['element_3'].",".$_POST['element_4'].",'".$_POST['element_12']."','".$_POST['element_11']."','".$_POST['element_7_1'].":".$_POST['element_7_2'].":".$_POST['element_7_3']."','".$_POST['element_5_3']."-".$_POST['element_5_1']."-".$_POST['element_5_2']."','".$_POST['element_6_3']."-".$_POST['element_6_1']."-".$_POST['element_6_2']."','".$_POST['element_9']."','".$_POST['element_8']."','".$_POST['element_10']."')";
	$result=mysql_query($query);
	if($result)echo "$query  crime report added successfully";
		else echo mysql_error();

	/*$query="insert into crime values (".$_POST['element_1'].",".$_POST['element_2'].",".$_POST['element_3'].",".$_POST['element_4'].",'".$_POST['element_12']."','".$_POST['element_11']."','".$_POST['element_7_1'].":".$_POST['element_7_2'].":".$_POST['element_7_3']."','".$_POST['element_5_1']."/".$_POST['element_5_2']."/".$_POST['element_5_3']."','".$_POST['element_6_1']."/".$_POST['element_6_2']."/".$_POST['element_6_3']."','".$_POST['element_9']."','".$_POST['element_8']."','".$_POST['element_10']."')";
	$result=mysql_query($query);*/
?>
