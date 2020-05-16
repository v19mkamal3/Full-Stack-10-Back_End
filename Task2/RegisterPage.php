<?php

if(isset($_POST['regester']))
{
    $username=$_POST['name'];
    $password=$_POST['password'];
    $email=$_POST['email'];
    
    $errors=array();  // put error in one array and check 

    //check
    if(empty($_POST['name']))
        $errors[]= 'username empty field';

    if(empty($_POST['password']))
        $errors[]= 'password empty field';

    if(empty($_POST['email']))
        $errors[]= 'email empty field';

    if(strlen($_POST['name'])>0 && strlen ($_POST['name'])<3)
        $errors[]= 'username must be >3';

    if(strlen($_POST['password'])>0 && strlen ($_POST['password'])<3)
        $errors[]= 'password must be >3=6';

    if(count($errors)>0){         // check if there is error or not 
        foreach($errors as $e){                            
            echo $e .'<br/>';
        }
    }
    else{
        exit ('welcome'.$_POST['name']);
    }
}


?>

<form action='loginPage.php' method='post'>
      Name     :   <input type='text' name='name'/>
      Email    :   <input type='text' name='email'/>
      Password :   <input type='password' name='password'/>

      <input type='submit' name='regester' value='Regester'/>
      
</form>