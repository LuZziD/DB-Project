<?php

include_once 'mysql_connect.php';

if (($_POST['username']) != "" && ($_POST['password']) != "" && ($_POST['firstname']) != "" && ($_POST['lastname']) != "" && ($_POST['email']) != "" && ($_POST['housenumber']) != "" && ($_POST['city']) != "" && ($_POST['country']) != "") {
	$user_salutation = 1;
	$user_nickname = $_POST['username'];
	$user_password_clear = $_POST['password'];
	$user_password = md5 ($user_password_clear);
	$user_firstname = $_POST['firstname'];
	$user_lastname = $_POST['lastname'];
	$user_email = $_POST['email'];
	$user_street = "Amerika";
	$user_housenumber = $_POST['housenumber'];
	$user_city = $_POST['city'];
	$user_postcode = 12345;
	$user_country = $_POST['country'];
	$user_role = 2;
	$sql = "INSERT INTO users(user_salutation, user_nickname, user_password, user_firstname, user_lastname, user_email, user_street, user_housenumber, user_city, user_postcode, user_country, user_role) VALUES ('$user_salutation', '$user_nickname', '$user_password', '$user_firstname', '$user_lastname', '$user_email', '$user_street', '$user_housenumber', '$user_city', '$user_postcode', '$user_country', '$user_role')";
	mysql_query($sql) or die (mysql_error());
	
	header('Location: ../www/success_register.html');
	
} else {
	
	echo "Ausfüllen, noob";

}

?>
