

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="all_input_form.php" method="post" enctype="multipart/form-data">
       <p> Text                    <input type="text"    name="username"></p>
       <p> Password                <input type="password"name="password"></p>
       <p> Email                   <input type="email"   name="email"></p>
                     
       <p> Hiden                   <input type="hidden"  name="hidden" value="xx"></p>
       <p> Month                   <input type="month"   name="month" ></p>
       <p> Number                  <input type="number"  name="number" ></p>
         
       <p> select Box                 <select name="select">
            <option value='male'>Male</option>
            <option value='female'>Female</option>

          </select></p> 
         <p>Radio                   <input type="radio"   name="radio" value="Male" >Male
                                    <input type="radio"   name="radio" value="Female" >Female</p>


         <p>checkbox     <input type="checkbox" name="language[]" value="php"/>php
                         <input type="checkbox" name="language[]" value="python"/>python</p>

        <p> Range        <input type="range"   name="range" ></p>            
        <p> Search       <input type="search"   name="search" ></p>
        <p> Tel          <input type="tel"   name="tel" ></p>  
        <p> Time         <input type="time"   name="time" ></p>
        <p> Url          <input type="url"   name="url" ></p>
        <p> Week         <input type="week"   name="week" ></p>
        <p> DATETIME     <input type="datetime"   name="datetime" ></p>

        
        <p>Color         <input type="color" name="color"/></p>
        <p>Date          <input type="date" name="date"></p>
        <p>Datetime-local<input type="datetime-local" name="datetime-local"></p>

        <input type="reset" name="reset" v\lue="reset" onclick="window.location.href='all_input_form.php'">
        <input type="submit" name="submit" value="submit">

    </form>
 
</body>
</html>
<?php
    // echo($_POST['value']);
    if(isset($_POST['submit']))
    {
        if(!empty($_POST['language']))
        
            // echo '<h3>you have select following language</h3>';
            foreach($_POST['language']as $language)
            {
                echo'<p>'.$language .'</p>';
            
        }
        
        // else 
        // {
        //     echo'please select at least one language';
        // }
        if(!empty($_POST['date']))
             echo '<p>'.$_POST['date'].'</p>';

        if(!empty($_POST['datetime-local']))
             echo '<p>'.$_POST['datetime-local'].'</p>';

        if(!empty($_POST['username']))
             echo '<p>'.$_POST['username'].'</p>';

        if(!empty($_POST['password']))
             echo '<p>'.$_POST['password'].'</p>';

        if(!empty($_POST['email']))
             echo '<p>'.$_POST['email'].'</p>';

        if(!empty($_POST['radio']))
             echo '<p>'.$_POST['radio'].'</p>';     

        

        if(!empty($_POST['hidden']))
             echo '<p>'.$_POST['hidden'].'</p>';

        if(!empty($_POST['month']))
             echo '<p>'.$_POST['month'].'</p>';
        
        if(!empty($_POST['number']))
             echo '<p>'.$_POST['number'].'</p>';

        if(!empty($_POST['select']))
             echo '<p>'.$_POST['select'].'</p>';

        if(!empty($_POST['range']))
             echo '<p>'.$_POST['range'].'</p>';

        if(!empty($_POST['color']))
             echo '<p>'.$_POST['color'].'</p>';

        if(!empty($_POST['search']))
             echo '<p>'.$_POST['search'].'</p>';

        if(!empty($_POST['tel']))
             echo '<p>'.$_POST['tel'].'</p>';

        if(!empty($_POST['time']))
             echo '<p>'.$_POST['time'].'</p>';

        if(!empty($_POST['url']))
             echo '<p>'.$_POST['url'].'</p>';

        if(!empty($_POST['week']))
             echo '<p>'.$_POST['week'].'</p>';

        if(!empty($_POST['datetime']))
             echo '<p>'.$_POST['datetime'].'</p>';

     
    }

?>