<?php 

$pdo = new PDO('pgsql:host=localhost;dbname=prueba', 'prueba', 'prueba');
$sent = $pdo->query('SELECT * FROM depart');



