<?php


$host    = "localhost";
$db      = "pochtabank";
$user    = "root";
$pass    = "";

$dsn = "mysql:host=$host;dbname=$db";
$opt = array(
        PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'",
       );
$pdo = new PDO($dsn, $user, $pass, $opt);
