<?php

include_once 'mysql_connect.php';

if (isset($_POST['username'])) {
	$username = $_POST['username'];
	$password_clear = $_POST['password'];
	$password = md5 ($password_clear);
	$sql = "SELECT * FROM users WHERE user_nickname='".$username."' AND user_password='".$password."' LIMIT 1";
	$res = mysql_query($sql);
	if (mysql_num_rows($res) == 1) {
		echo "Login successful";
		exit();
	} else {
		echo "Invalid login";
		exit();
	}
}

?>


<html>

<head>
    <title>Kundenkonto</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="layout-kundenkonto.css" type="text/css" />
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
                <li><a href="../www/sortiment.html">Unser Sortiment</a>
                </li>
                <li><a href="#">Ihr Warenkorb</a>
                </li>
                <li><a href="login.php">Ihr Kundenkonto</a>
                </li>
            </ul>
        </div>
        <div id="container">
            <div id="content">
                <h2 align="left">Ihr Kundenkonto</h2>
                <form method="post" action="login.php">
					Username: <input type="text" name="username" /><br /><br />
					Password: <input type="password" name="password" /><br /><br />
					<input type="submit" name="submit" value="Log In" />
				</form>
            </div>
        </div>
    </div>
    <div id="footer">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</div>
</body>

</html>