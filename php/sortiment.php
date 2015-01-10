<!DOCTYPE html>
<html>

<head>
    <title>Hauptseite</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="layout-sortiment.css" type="text/css" />
    <script src="jquery-2.1.3.min.js"></script>
</head>

<body>
    <div id="kopf">
        Hauptseite
    </div>
    <div id="container2">
        <div id="navi">
            <ul>
                <li><a href="index.html">Hauptseite</a>
                </li>
                <li><a href="sortiment.html">Unser Sortiment</a>
                </li>
                <li><a href="#">Ihr Warenkorb</a>
                </li>
                <li><a href="../php/login.php">Ihr Kundenkonto</a>
                </li>
            </ul>
        </div>
        <div id="container">
            <div id="content">
                <h2 align="left">Unser Sortiment</h2>
                </div>
            <div id="table">

            </div>
        </div>
    </div>
	
<?php

	include_once 'mysql_connect.php';
	$sql = mysql_query ('SELECT * FROM articles') or die (mysql_error());

	echo "<table>
	<tr>
	<th>Titel</th>
	<th>Director</th>
	<th>Genre</th>
	<th>Dauer</th>
	<th>Publisher</th>
	<th>Altersbeschränkung</th>
	<th>SonDatumsDing</th>
	<th>NochSonDatumsDing</th>
	<th>Menge</th>
	<th>Mietpreis</th>
	<th>Kaufpreis</th>
	
	</tr>";

	while($row = mysql_fetch_array($sql)) {
		echo "<tr>";
		echo "<td>" . $row['article_title'] . "</td>";
		echo "<td>" . $row['article_director'] . "</td>";
		echo "<td>" . $row['article_genre'] . "</td>";
		echo "<td>" . $row['article_runtime'] . "</td>";
		echo "<td>" . $row['article_publisher'] . "</td>";
		echo "<td>" . $row['article_agelimit'] . "</td>";
		echo "<td>" . $row['article_releasedate'] . "</td>";
		echo "<td>" . $row['article_publishingdate'] . "</td>";
		echo "<td>" . $row['article_amount'] . "</td>";
		echo "<td>" . $row['article_rentprice'] . "</td>";
		echo "<td>" . $row['article_purchaseprice'] . "</td>";
		echo "</tr>";
	}
	echo "</table>";
?>
	
    <div id="footer">Diese Webseite wurde mithilfe der Webtechnologien <a href="https://de.wikipedia.org/wiki/HTML5" style="color: #00aedb; text-decoration: none">HTML5</a>, <a href="https://de.wikipedia.org/wiki/Cascading_Style_Sheets" style="color: #00aedb; text-decoration: none">CSS3</a>, <a href="https://de.wikipedia.org/wiki/JavaScript" style="color: #00aedb; text-decoration: none">Javascript</a> und <a href="https://de.wikipedia.org/wiki/JQuery" style="color: #00aedb; text-decoration: none">JQuery</a> erstellt.</div>
    </body>
</html>