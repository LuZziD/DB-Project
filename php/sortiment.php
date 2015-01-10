<html>
<head>
<title>Hauptseite</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="layout-sortiment.css" type="text/css">
<link rel="stylesheet" type="text/css" href="http://cdn.datatables.net/1.10.4/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
<script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
	
<?php

	include_once 'mysql_connect.php';
	$sql = mysql_query ('SELECT * FROM articles') or die (mysql_error());
?>

<script type="text/javascript">
	$(document).ready(function() {
		$('#example').DataTable();
	} );
</script>
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
				<?php
				echo "<table id='example' class='display' cellspacing='0' width='100%'>
				<thead>
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
				</tr>
				</thead>
				
				<tfoot>
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
				</tr>
				</tfoot>
				<tbody>";

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
				echo "</tbody>";
				echo "</table>";
				?>
            </div>
        </div>
    </div>
	
    <div id="footer">Diese Webseite wurde mithilfe der Webtechnologien <a href="https://de.wikipedia.org/wiki/HTML5" style="color: #00aedb; text-decoration: none">HTML5</a>, <a href="https://de.wikipedia.org/wiki/Cascading_Style_Sheets" style="color: #00aedb; text-decoration: none">CSS3</a>, <a href="https://de.wikipedia.org/wiki/JavaScript" style="color: #00aedb; text-decoration: none">Javascript</a> und <a href="https://de.wikipedia.org/wiki/JQuery" style="color: #00aedb; text-decoration: none">JQuery</a> erstellt.</div>
    </body>
</html>