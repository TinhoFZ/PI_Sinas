<?php

include("conexao.php");

$nome = $_POST['nome'];
$email = $_POST['email'];
$telefone = $_POST['telefone'];
$senha = $_POST['senha'];

$uf = $_POST['uf'];
$cidade = $_POST['cidade'];
$bairro = $_POST['bairro'];

$sqlU = "INSERT INTO usuario (nome, email, telefone, senha) 
VALUES ('$nome', '$email', '$telefone', '$senha')";

$sqlC = "INSERT INTO comunidade (uf, cidade, bairro) 
VALUES ('$uf', '$cidade', '$bairro')";

if (mysqli_query($conn, $sqlU) && mysqli_query($conn, $sqlC)) {
    echo "<script> location.href='index.html'; </script>";
} else {
    echo "Erro". mysqli_error($conn);
}

mysqli_close($conn);

?>