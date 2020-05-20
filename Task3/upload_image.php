<?php
session_start();
if(isset( $_SESSION['pwd']) && isset( $_SESSION['umail']) ){

    // echo "dddddddone";
    if(isset($_POST['submit'])){
    $errors=array();

    //file information
    $name=$_FILES['image']['name'];
    $size=$_FILES['image']['size'];
    $error=$_FILES['image']['error'];
    $tmp=$_FILES['image']['tmp_name'];
    $type=$_FILES['image']['type'];

    $newname=md5(rand(1000,10000).date('U')).'_'.$name;
    
    $filepath= 'uploads/'.$newname;


      //3- check:
      if($error==4)
         $errors[]='no file selected';
   
      if($type !=="image/png" )
         $errors[]='invalid file uploaded';

      if($size > 500*1024)
         $errors[]='max file size is 500kb';

      if(count($errors)==0 ){

         if(move_uploaded_file($tmp,$filepath)){
             $_SESSION['filepath']=$filepath;
            //  echo 'file uploaded successfully ';
                echo "<script>location.href='image_email_preview.php'</script>";
                // echo "<img src=".$filepath." height=200 width=300 />";
             }    

         else
             echo 'error moving file'; 
     }
     else
     {
         foreach($errors as $er)
         {
             echo $er . '<br/>';
         }
     }

}
}else 
{
    echo"<script>location.href='login.php'</script>";
}


?>




<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>
<body>
<h2>please upload your photo to complete login</h2>
<form action="upload_image.php" method="post" enctype="multipart/form-data">
    image    <input type="file" name="image"/><br/>    
    <input type="submit" name="submit" value="upload"/><br/>
</form>
</body>
</html>

