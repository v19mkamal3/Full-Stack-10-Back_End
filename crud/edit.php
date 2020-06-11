<?php
require 'db.php';
$id=$_GET['id'];

// $message='';
$sql='SELECT * FROM people WHERE id=:id';
$statement =$connenction->prepare($sql);
$statement->execute([':id'=> $id]);
$person =$statement ->Fetch(PDO::FETCH_OBJ);


if (isset ($_POST['name']) && isset($_POST['email']) ) {
    // echo"submited";
    $name=$_POST['name'];
    $email=$_POST['email'];
    // $sql='INSERT INTO people(name ,email) VALUES(:name, :email)';
    $sql='UPDATE people SET name=:name , email=:email WHERE id=:id';

    $statement = $connenction->prepare($sql);
    if($statement->execute([':name'=>$name, ':email'=>$email,':id'=>$id])){

        // $message = 'data inserted successfully';
        header("Location:/");

    }
}

?>

<?php require "header.php";?>
<div class="container">
    <div class="card mt-5"> 
        <div class="card-header">
            <h2>Update person</h2>    
        
        </div>

        <div class="card-body">
             <?php if(!empty($message)): ?>
               <div class="alert alert-success">
                <?= $message; ?>
               
               </div>

             <?php endif; ?>

            <form method="post">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input value="<?= $person->name; ?>" type="text"name="name" id="name" class="form-control">

                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" value="<?= $person->email; ?>" name="email" id="email" class="form-control">
                    
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-info">Update person</button>
                </div>
            </form>
        </div>
    </div>

</div>
<?php require "footer.php";?>
