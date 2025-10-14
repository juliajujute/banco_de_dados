<?php
    include("conexao.php");
    $name = $_POST['name'];
    $idade = $_POST['idade'];
    $cpf = $_POST['cpf'];
    $abrir = $_POST['abrir'];
    $dobrar = $_POST['dobrar'];

    $inserir = $pdo->prepare("insert into demo (name,idade,cpf, abrir,dobrar)
                     values ('$name', '$idade', '$cpf',  '$abrir','$dobrar')");
    $inserir->execute();

    header("location:kaline.php");


    ?>