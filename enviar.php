<?php
include("conexao.php");
$id= $_POST['id'];
$nome_produto= $_POST['nome_produto'];
$sql= "INSERT INTO estoque(id,nome_produto)
            VALUES('$id','$nome_produto')";
        
        if(mysqli_query($conexao, $sql)){
            echo "Produto inserido com sucesso"."<br>";
            echo "<a href='estoque_funcionario.php'>Voltar para o estoque.</a>";
        }

    else{
        echo "ERRO".mysqli_connect_error($conexao);
    }
?>
