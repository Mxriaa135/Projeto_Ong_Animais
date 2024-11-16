<?php
$host = "localhost:3306";
$db = 'ong_database';
$user = 'root';
$pass = '';

$mysqli = new mysqli($host, $user, $pass, $db);
if($mysqli->connect_errno){
    die('Falha na conexão com o banco de dados')
}
?>
