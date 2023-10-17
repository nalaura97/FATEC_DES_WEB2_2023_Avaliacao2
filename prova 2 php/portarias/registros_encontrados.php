<?php
require_once('header.php');
require_once('dados_banco.php');

if (!isset($_SESSION['online']) || !$_SESSION['online']) {
    header("location: index.php");
    exit;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $veiculo_id = $_POST['veiculo_id'];

    try {
        $dsn = "mysql:host=$servername;dbname=$dbname";
        $conn = new PDO($dsn, $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = "SELECT data_hora FROM registro WHERE veiculos_id = :veiculo_id";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':veiculo_id', $veiculo_id, PDO::PARAM_INT);
        $stmt->execute();
        $registros = $stmt->fetchAll();
    } catch (PDOException $e) {
        echo $sql . "<br>" . $e->getMessage();
    }
    $conn = NULL;
}
?>