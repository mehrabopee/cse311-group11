<?php
$db = mysqli_connect("localhost","root","","cse311_project");

$id = $_POST['ID'];
$name = $_POST['Name'];
$type = $_POST['Type'];
$brand = $_POST['Brand'];
$sepec  = $_POST['Specifications'];
$price = $_POST['Price($)'];
$quantity = $_POST['Quantity'];

$sql = "INSERT INTO  `products_info` (`ID`, `Name`, `Type`, `Brand`, `Specifications`, `Price($)`, `Quantity`) VALUES ('$id','$name','$type','$brand','$sepec','$price','$quantity')";
if(mysqli_query($db,$sql)) {
   header("location:products2.php");
   exit();
}
else {
    echo "There is an error";
}

    


?>