<?php

/*
Verschlüsselt ein Passwort in MD5, SHA1 oder Crypt.
*/

$pass = "root"; // Platzhalter; Wird später durch Passwort aus einer Benutzereingabe ersetzt.

$md5pass = md5 ($pass);
$sha1pass = sha1 ($pass);
$cryptpass = crypt($pass, "rt");

echo "$md5pass";

?>