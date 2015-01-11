<?php
include '../php/mysql_connect.php';
if(!isset($_SESSION['id']) || $_SESSION['nickname'] == ''){
	echo '<a href="../php/sortiment.php"></a>';
}
?>

<html>

<head>
    <title>Kundenkonto</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../php/layout-loginphp.css" type="text/css" />
    <script src="jquery-2.1.3.min.js"></script>
</head>

<body>
    <div id="kopf">
        Ihr Kundenkonto
    </div>
    <!-- Guck mal bite ob du es hinbekommst dass die beiden Content Boxen direkt unter dem head sind hat bei mir mit Foat nicht geklappt... -->
    <div id="container2">
        <div id="navi">
            <ul>
                <li><a href="../www/index.html">Hauptseite</a>
                </li>
                <li><a href="../php/sortiment.php">Unser Sortiment</a>
                </li>
                <li><a href="#">Ihr Warenkorb</a>
                </li>
                <li><a href="../php/login.php">Ihr Kundenkonto</a>
                </li>
            </ul>
        </div>
        <div id="container">
            <div id="content">
                <h2 align="left">Ihr Kundenkonto</h2>
                <form method="post" action="../php/login_check.php">
                    <div id="input">
				    <label for="Benutzername">Benutzername</label>
                    <input size="50" name="username" style="color:#000;font-family:Arial;font-size:12px;border: 1px solid #00aedb;background-color:#FFFFFF;height:20px;padding:5px;width:250px;" type="Text" placeholder="Bitte einen Benutzernamen eingeben" title="Bitte einen Benutzernamen eingeben">
                    <br>
                    <label for="Passwort">Passwort</label>
                    <input size="50" name="password" style="color:#000;font-family:Arial;font-size:12px;border: 1px solid #00aedb;background-color:#FFFFFF;height:20px;padding:5px;width:250px;" type="password" placeholder="Bitte ein Passwort eingeben" title="Bitte einPasswort eingeben">
                    <br>
                    <br>
                    </div>
					<input id="login" type="submit" name="submit" value="Log In" />
				</form>
            </div>
        </div>
    </div>
    <div id="footer">Diese Webseite wurde mithilfe der Webtechnologien <a href="https://de.wikipedia.org/wiki/HTML5" style="color: #00aedb; text-decoration: none">HTML5</a>, <a href="https://de.wikipedia.org/wiki/Cascading_Style_Sheets" style="color: #00aedb; text-decoration: none">CSS3</a>, <a href="https://de.wikipedia.org/wiki/JavaScript" style="color: #00aedb; text-decoration: none">Javascript</a> und <a href="https://de.wikipedia.org/wiki/JQuery" style="color: #00aedb; text-decoration: none">JQuery</a> erstellt.</div>
</body>

</html>