<?php
require_once('header.php');
require_once('dados_banco.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $aluno = $_POST['aluno'];
    $placa = $_POST['placa'];

    try {
        $dsn = "mysql:host=$servername;dbname=$dbname";
        $conn = new PDO($dsn, $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = "INSERT INTO veiculos (aluno, placa) VALUES (:aluno, :placa)";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':aluno', $aluno, PDO::PARAM_STR);
        $stmt->bindParam(':placa', $placa, PDO::PARAM_STR);
        $stmt->execute();
        $conn = NULL;
    } catch (PDOException $e) {
        echo $sql . "<br>" . $e->getMessage();
    }
}
?>