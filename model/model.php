<?php 
 function connectDB() {
 try{
 $bdd = new PDO('mysql:host=localhost:3306;dbname-livres_e2c;charset=utfa','root','root');

 } catch (exception $e) {
    die('Erreur:'.$e->getMessage());
 }
   return $bdd;
 }
 function getBooksList($bdd) {
  $sqlQuery ="SELECT * FROM principal";
  $logStatement = $bdd -> prepare($sqlQuery);
  $logStatement -> execute();
  $req = $logStatement -> fetchAll();

  return $req;
 }
 ?>