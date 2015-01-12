<html>

<head>
    <title>Hauptseite</title>
    <link rel="stylesheet" href="layout-sort.css" type="text/css" />
    <script type="text/javascript" src="TableSort.js"></script>
	
	<?php include_once '../php/mysql_connect.php'; ?>
</head>

<body>
    <div id="kopf">
        Hauptseite
    </div>
    <!-- Guck mal bite ob du es hinbekommst dass die beiden Content Boxen direkt unter dem head sind hat bei mir mit Foat nicht geklappt... -->
    <div id="container2">
        <div id="navi">
            <ul>
                <li><a href="index.html">Hauptseite</a>
                </li>
                <li><a href="sortiment.html">Unser Sortiment</a>
                </li>
                <li><a href="#">Ihr Warenkorb</a>
                </li>
                <li><a href="kundenkonto.html">Ihr Kundenkonto</a>
                </li>
            </ul>
        </div>
        <div id="container">
            <div id="content">
                <h2 align="left">Unser Sortiment</h2>
            </div>
            <div class="datagrid">
                <?php 
                    $sql=mysql_query ( '
                    SELECT 
                        a.article_ID, 
                        a.article_title,
                        d.director_firstname,
                        g.genre_name,
                        a.article_runtime,
                        p.publisher_name,
                        ag.agelimit_name,
                        a.article_releasedate,
                        a.article_publishingdate,
                        a.article_amount,
                        a.article_rentprice,
                        a.article_purchaseprice
                FROM
                        articles a, directors d, publishers p, genres g, agelimits ag
                WHERE
                        a.article_director = d.directors_ID AND
                        a.article_genre = g.genre_ID AND
                        a.article_publisher = p.publisher_ID AND
                        a.article_agelimit = ag.agelimit_ID') or die (mysql_error());

                echo "<table id='example' class='display' cellspacing='0' width='100%'>
				<thead>
				<tr>
				<th>Titel</th>
				<th>Director</th>
				<th>Genre</th>
				<th>Dauer</th>
				<th>Publisher</th>
				<th>FSK</th>
				<th>Release</th>
				<th>Publishing</th>
				<th>Menge</th>
				<th>Mietpreis</th>
				<th>Kaufpreis</th>
				</tr>
				</thead>
				<tbody>"; while($row=mysql_fetch_array($sql)) { echo "<tr>"; echo "<td>" . $row[ 'article_title'] . "</td>"; echo "<td>" . $row[ 'director_firstname'] . "</td>"; echo "<td>" . $row[ 'genre_name'] . "</td>"; echo "<td>" . $row[ 'article_runtime'] . "</td>"; echo "<td>" . $row[ 'publisher_name'] . "</td>"; echo "<td>" . $row[ 'agelimit_name'] . "</td>"; echo "<td>" . $row[ 'article_releasedate'] . "</td>"; echo "<td>" . $row[ 'article_publishingdate'] . "</td>"; echo "<td>" . $row[ 'article_amount'] . "</td>"; echo "<td>" . $row[ 'article_rentprice'] . "</td>"; echo "<td>" . $row[ 'article_purchaseprice'] . "</td>"; echo "</tr>"; } echo "</tbody>"; echo "</table>"; ?>

            </div>
        </div>
    </div>
    <div id="footer">Diese Webseite wurde mithilfe der Webtechnologien <a href="https://de.wikipedia.org/wiki/HTML5">HTML5</a>, <a href="https://de.wikipedia.org/wiki/Cascading_Style_Sheets">CSS3</a>, <a href="https://de.wikipedia.org/wiki/JavaScript">Javascript</a> und <a href="https://de.wikipedia.org/wiki/JQuery">JQuery</a> erstellt.</div>
</body>

</html>
No newline at end of file
