<?php
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if ($_POST['nome'] === 'fatec' && $_POST['senha'] === 'portaria') {
        $_SESSION['online'] = true;
        $_SESSION['username'] = 'Portaria Fatec';
        header("location: principal.php");
        exit;
    } else {
        $loginError = "Login inválido. Tente novamente.";
    }
}

if (isset($_GET['logout']) && $_GET['logout'] == 'true') {
    session_unset();
    session_destroy();
}
?>