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


<html>

<head>
    <title>Registrierung</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="layout-registrierung.css" type="text/css" />
    <script src="jquery-2.1.3.min.js"></script>
</head>

<body>
    <div id="kopf">
        Registrierung
    </div>
    <div id="container2">
        <div id="navi">
            <ul>
                <li><a href="../www/index.html">Hauptseite</a>
                </li>
                <li><a href="../www/sortiment.html">Unser Sortiment</a>
                </li>
                <li><a href="#">Ihr Warenkorb</a>
                </li>
                <li><a href="../php/login.php">Ihr Kundenkonto</a>
                </li>
            </ul>
        </div>
        <div id="container">
            <div id="content">
                <-! >Hier fehlt noch die salutation, bitte adden</-!>
                <h2 align="left">Registrierung</h2>
                <form method="post" action="register.php">
                    <div id="input">Benutzername
                         <input size="50" name="username" style="color:#000;font-family:Arial;font-size:12px;border: 1px solid #00aedb;background-color:#FFFFFF;height:20px;padding:5px;width:250px;" type="Text" title="Bitte einen Benutzernamen eingeben">
                        <br>Passwort
                         <input size="50" name="password" style="color:#000;font-family:Arial;font-size:12px;border: 1px solid #00aedb;background-color:#FFFFFF;height:20px;padding:5px;width:250px;" type="password" title="Bitte einPasswort eingeben">
                        <br>Vorname
                        <input size="50" name="firstname" style="color:#000;font-family:Arial;font-size:12px;border: 1px solid #00aedb;background-color:#FFFFFF;height:20px;padding:5px;width:250px;" type="Text" title="Bitte Ihren Vornamen eingeben">
                        <br>Nachname
                        <input size="50" name="lastname" style="color:#000;font-family:Arial;font-size:12px;border: 1px solid #00aedb;background-color:#FFFFFF;height:20px;padding:5px;width:250px;" type="Text" title="Bitte Ihren Nachnamen eingeben">
                        <br>E-Mail Adresse
                       <input size="50" name="email" style="color:#000;font-family:Arial;font-size:12px;border: 1px solid #00aedb;background-color:#FFFFFF;height:20px;padding:5px;width:250px;" type="Text" title="Bitte ihre E-Mail Adresse eingeben">
                        <br>Hausnummer
                         <input size="50" name="housenumber" style="color:#000;font-family:Arial;font-size:12px;border: 1px solid #00aedb;background-color:#FFFFFF;height:20px;padding:5px;width:250px;" type="Text" title="Bitte Ihre Hausnummer eingeben">
                        <br>Stadt
                         <input size="50" name="city" style="color:#000;font-family:Arial;font-size:12px;border: 1px solid #00aedb;background-color:#FFFFFF;height:20px;padding:5px;width:250px;" type="Text" title="Bitte Ihre Stadt eingeben">
                        <br>Land
                        <input size="50" name="country" style="color:#000;font-family:Arial;font-size:12px;border: 1px solid #00aedb;background-color:#FFFFFF;height:20px;padding:5px;width:250px;" type="Text" title="Bitte Ihr Land eingeben">
                        <br>
                        <br>
                        
                    </div>
                    <div id="submit">
						<input type="submit" name="submit" value="Benutzerkonto erstellen" />
                        <a href="../php/register.php" style="color: #000000; text-decoration: none">Benutzerkonto erstellen</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div id="footer">Diese Webseite wurde mithilfe der Webtechnologien <a href="https://de.wikipedia.org/wiki/HTML5" style="color: #00aedb; text-decoration: none">HTML5</a>, <a href="https://de.wikipedia.org/wiki/Cascading_Style_Sheets" style="color: #00aedb; text-decoration: none">CSS3</a>, <a href="https://de.wikipedia.org/wiki/JavaScript" style="color: #00aedb; text-decoration: none">Javascript</a> und <a href="https://de.wikipedia.org/wiki/JQuery" style="color: #00aedb; text-decoration: none">JQuery</a> erstellt.</div>
</body>

</html>