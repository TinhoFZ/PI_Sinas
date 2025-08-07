<?php

include("conexao.php");

$senha = $_POST['senha'];
$nome = $_POST['nome'];

$sql = "SELECT EXISTS(SELECT 1 FROM usuario WHERE senha = '$senha' AND nome = '$nome')";
$resultado = mysqli_query($conn, $sql);

if ($resultado) {
    $row = mysqli_fetch_row($resultado);

    if ($row[0]) {
        echo "<script> location.href='index.html'; </script>";
    } else {
        echo "<script>alert('Usuário ou senha incorretos');</script>";
        echo "<script>location.href='login.html';</script>";
    }
} else {
    echo "Erro: " . mysqli_error($conn);
}

mysqli_close($conn);

?>