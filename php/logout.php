<?php
include 'mysql_connect.php';
session_destroy();
unset($_SESSION['userid']);
unset($_SESSION['nickname']);
?>