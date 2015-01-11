<?php

include_once 'mysql_connect.php';

if (isset($_POST['username'])) {
	$username = $_POST['username'];
	$password_clear = $_POST['password'];
	$password = md5 ($password_clear);
	$sql = "SELECT * FROM users WHERE user_nickname='".$username."' AND user_password='".$password."' LIMIT 1";
	$res = mysql_query($sql);
	if (mysql_num_rows($res) == 1) {
		$fetch = mysql_fetch_array($res);
		$_SESSION['userid']= $fetch['user_ID'];
		$_SESSION['nickname']= $fetch['user_nickname'];
		header('Location: ../php/sortiment.php');
	} else {
		echo "Invalid login";
		exit();
	}
}

?>


