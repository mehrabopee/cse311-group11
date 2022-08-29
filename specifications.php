<?php
$db = mysqli_connect("localhost","root","","cse311_project");
$id = $_GET['id'];
$sql = "SELECT * FROM products_info WHERE ID = '$id'";
$result = mysqli_query($db, $sql);
$product = $result ->fetch_assoc();
$name = $product['Name'];
$sepec = $product['Specifications'];
?>
<!DOCTYPE html>
<html>
    <head>
       <style>
          * {
            background-color: lightblue;
          }
          .name {
            font-weight: bold;
          }

       </style>
    </head>
    <body>
        <div>
            <h1>NORTH SOUTH ELECTRONICS</h1>
        </div>
        <div class='Image'>
            <img src="./images/<?=$id?>.jpg">
        </div>
        <div class='name'>
            <a><?=$name?></p>
        </div>
        <div class='Specifications'>
               <p><?=nl2br($sepec)?></p>
        </div>
    </body>
</html>