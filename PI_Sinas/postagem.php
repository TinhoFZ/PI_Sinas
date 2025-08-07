<?php

include("conexao.php");

$titulo = $_POST['titulo'];
$texto = $_POST['texto'];

$sql = "INSERT INTO postagem (titulo, texto) 
VALUES ('$titulo', '$texto')";
if (mysqli_query($conn, $sql)) {
    echo "<script> location.href='index.html'; </script>";
} else {
    echo "Erro". mysqli_error($conn);
}

mysqli_close($conn);

?>