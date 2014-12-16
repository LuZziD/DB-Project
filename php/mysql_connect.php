<?php

/*
Verbindet mit der MySQL Datenbank.
*/

$db_host = "localhost";
$db_username = "root";
$db_pass = "root";
$db_name = "test_database";

@mysql_connect ($db_host, $db_username, $db_pass) or die ("Could not connect to MySQL");
@mysql_select_db ($db_name) or die ("No such database");

?>