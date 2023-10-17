<?php
require_once('header.php');
require_once('dados_banco.php');

try {
    $dsn = "mysql:host=$servername;dbname=$dbname";
    $conn = new PDO($dsn, $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql = "SELECT * FROM veiculos";
} catch (PDOException $e) {
    echo $sql . "<br>" . $e->getMessage();
}
$stmt = $conn->query($sql);
$conn = NULL;
?>
