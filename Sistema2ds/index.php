
<!DOCTYPE html>
<html lang="en">
<head>
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Quiosque</title>
    <link rel="stylesheet" type= "text/css" href="style.css">
    
</head>

<?php 
    //session_start(); 
    include("conexao.php");
?>

<body>
   

         
           <form action="inserirCheck.php" method="post">    
                                                          
   
              <span class="padding-bottom--15" align ="center">Entre na sua conta</span>
              <form id="stripe-login">

                <div class="field padding-bottom--24">
                  <label for="email">Nome</label>
                  <input type="text" name="name">
                </div>

                <div class="field padding-bottom--24">
                  <div class="grid--50-50">
                    <label for="idade">Idade</label>
                  </div>
                  <input type="text" name="idade">
                            </div>

                <div class="field padding-bottom--24">
                  <label for="cpf">CPF</label>
                  <input type="text" name="cpf">
                </div>         

               

                <div class="field field-checkbox padding-bottom--24 flex-flex align-center">
                  <label for="checkbox">
                    <input type="checkbox" name="abrir">  Abrir os cadeados da lona
                  </label>
                </div>
                
                

                <div class="field field-checkbox padding-bottom--24 flex-flex align-center">
                  <label for="checkbox">
                    <input type="checkbox" name="dobrar">  dobrar lona
                  </label>
                </div>


                <div class="field padding-bottom--salvar">
                  <input type="submit" name="submit" class="btn btn-primary" value="Salvar ">
                </div>


                





                
        </div>
      </div>
    </div>
  </div>





