<?php

/*
Zählt die Aufrufe einer Seite.
*/


include_once "mysql_connect.php";

mysql_query ("UPDATE viewcounter SET views = views +1 WHERE id='1'"); // Erhöht den Wert bei "views" in der Tabelle "viewcounter" in der Zeile mit der ID 1.


$sql = mysql_query ("SELECT * FROM viewcounter WHERE id='1'"); // Wählt den Datensatz mit der ID 1 aus der Tabelle viewcounter aus und Speichert alle Daten in einem Array.
while ($row = mysql_fetch_array($sql)){ // Array filtern; Daten einzeln in Variablen abspeichern.
	$id = $row["id"];
	$pagename = $row["pagename"];
	$views = $row["views"];
};


$login_pass = mysql_query ("SELECT * FROM login WHERE id='1'"); // Gleiche Funktion wie oben, nur wird hier NUR das Passwort rausgefiltert.
while ($login = mysql_fetch_array($login_pass)){
	$password = $login["password"];
};

if ($password == "63a9f0ea7bb98050796b649e85481845"){ // Testet, ob der eingegebene Passworthash mit dem in der Datenbank übereinstimmt. Platzhalter; Wird später durch Passwort aus einer Benutzereingabe ersetzt.
	echo $password; // Momentan MD5, kann geändert werden.
} else {
	echo "Wrong Password";
};

?>

<html>
<head>
	<title>Database Test</title>
</head>

<body>
	
	<br>Viewcounter: <?php print $views; ?> Aufrufe auf der <?php print $pagename; ?> Seite. <!--- Schreibt die Variablen "views" und "pagename" aus den oben gefilterten Arrays in eine Zeile HTML.-->

</body>
</html>