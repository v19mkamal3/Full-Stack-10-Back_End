<?php
$dsn='mysql:host=localhost;dbname=company';
$username='root';
$password='';
$options=[];
$connenction=new PDO($dsn,$username,$password,$options);
try{
    $connenction=new PDO($dsn,$username,$password,$options);
    
}catch(PDOExeption $e){

}