<?php
    $pwd= 'S1234s12';
    $umail= 'admin@gmail.com';
    session_start();

    // print_r($_SESSION)
    // $_SESSION['pwd']='S1234s12';
    // $_SESSION['umail']='admin@gmail.com';
    // print_r($_SESSION)
    // print_r($_POST);
    if($_POST['pwd']==$pwd && $_POST['umail']==$umail){
        $_SESSION['umail']=$umail;
        $_SESSION['pwd']=$pwd;
       
        echo "<script>location.href='upload_image.php'</script>";

    }
    else{
        $password=$_POST['pwd'];
        $email=$_POST['umail'];
        $errors=array();

        if(empty($password))
            $errors[]= 'password empty field';

         if(empty($email))
            $errors[]= 'email empty field';

        if($password!==$pwd)
            echo"wrong password please try again";
        // if(strlen($password)>0 && strlen ($password)<9)
        //    $errors[]= 'password must be not exceded 9 digit';

        if(count($errors)>0){         // check if there is error or not 
            foreach($errors as $e){                            
                echo $e .'<br/>';
            }
        }  
        // echo"<script>alert('username or password incorrect!')</script>";
        // echo"<script>location.href='login.php'</script>";
        
    }
    
?>