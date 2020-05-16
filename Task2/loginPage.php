<?php
$name_stored= file_get_contents('read1.txt',FALSE,NULL,40,5);
// $password_stored= file_get_contents('read1.txt',FALSE,NULL,9,4);
// print_r($_POST)

if(isset($_POST['signin'])){
    $password=$_POST['password'];
    $email=$_POST['email'];
    $errors=array();

    if(empty($email))
    $errors[]='email empty field';

    if(empty($password))
    $errors[]='password empty field';

    

    if(strlen($password)>0 && strlen ($password)<3)
    $errors[]= 'password must be >3';

    if(count($errors)>0){         // check if there is error or not 
        foreach($errors as $e){                            
            echo $e .'<br/>';
        }
    }
    
 else{
            // exit ('welcome ' . $name_stored);
            exit ('welcome ' .$email);
        }

// print_r($password_stored);
// if($_POST['email']== $name_stored && $_POST['password']==$password_stored){
//     echo "welcome " .$name_stored;
// } 
// else{
//     echo"wrong password or email";
// }
}
?>

<form action='loginPage.php' method='post'>
      Email:     <input type='text' name='email'/>
      Password:   <input type='password' name='password'/>

      <input type='submit' name='signin' value='Sign In'/>
      
</form>
<form action='RegisterPage.php' method='post'> 
        <input type='submit' name='regester' value='Regester'/>
</form>