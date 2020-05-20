<?php

session_start();
// print_r($_SESSION['umail']);

echo  $_SESSION['umail'] .'<br/>';

// print_r($_SESSION['filepath']);
echo "<img src=".$_SESSION['filepath'] ." height=200 width=300 />"; 


if(isset($_POST['logout'])){
    session_destroy();
    echo"<script>location.href='index.php'</script>";
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
    <form method="post">
         <p><input type="submit" name="logout" value="logout"></p>
    </form>
</body>
</html>