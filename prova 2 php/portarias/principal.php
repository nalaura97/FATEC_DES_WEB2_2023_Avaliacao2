<?php
require_once('header.php');
?>

<!DOCTYPE html>
<html lang="pt_BR">
<head>
    <!-- ... (cabeçalho) ... -->
</head>
<body>
    <div class="page-header">
        <h1><?php echo $_SESSION["username"]; ?></h1>
    </div>
    <p>
        <a href="registros.php" class="btn btn-primary">Verificar Veículos</a>
        <br><br>
        <a href="cadastro.php" class="btn btn-primary">Cadastro Veículos</a>
        <br><br>
        <a href="logout.php" class="btn btn-danger">Sair da conta</a>
    </p>
</body>
</html>