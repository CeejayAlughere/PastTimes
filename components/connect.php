<?php

$dsn = "mysql:host=localhost;dbname=shop_db";
$user = "root";
$pass = "";

try {
   $conn = new PDO($dsn, $user, $pass);
   $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
   echo "Connection failed: " . $e->getMessage();
}

?>