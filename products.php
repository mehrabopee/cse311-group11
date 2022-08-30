<?php include('connect.php');?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products</title>
   </head>
    <body>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <div class="container-fluid my-3">
    <h1 class="text-center">NORTH SOUTH ELECTRONICS</h1> 
    <br>
    <div>
    <h2 class="text-center">
            <form method="POST">
                  <mp><input type="Submit" name="submit" value="Mobile Phones"></mp>
                  <TV><input type="Submit" name="submit" value="Televisions"></TV>
                  <Laptop><input type="Submit" name="submit" value="Laptops"></Laptop>
                  <ac><input type="Submit" name="submit" value="ACs"></ac>
                  <Watch><input type="Submit" name="submit" value="Smart Watches"></Watch>
                  <Earphone><input type="Submit" name="submit" value="Headphones"></Earphone>
                  <Comment><input type="Submit" name="submit" value="Review"></Comment>
            </form>
</h2>
        </div>
    
</body>
</html>
<?php
$db = mysqli_connect("localhost","root","","cse311_project");

if(isset($_POST['submit'])) {
    if($_POST['submit']=="Mobile Phones") {
        header("location:mobile.php");
        exit();
    }
    if($_POST['submit']=="Televisions") {
        header("location:tv.php");
        exit();
    }
    if($_POST['submit']=="Laptops") {
        header("location:Laptop.php");
        exit();
    }
    if($_POST['submit']=="ACs") {
        header("location:ac.php");
        exit();
    }
    if($_POST['submit']=="Smart Watches") {
        header("location:Smart_watch.php");
        exit();
    }
    if($_POST['submit']=="Headphones") {
        header("location:Headphones.php");
        exit();
    }
    if($_POST['submit']=="Review") {
        header("location:Review.php");
        exit();
    }





}
?>