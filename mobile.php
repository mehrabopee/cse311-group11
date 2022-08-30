<?php include('connect.php');?>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Home Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <div class="container-fluid my-3">
    <h1 class="text-center">NORTH SOUTH ELECTRONICS</h1>
    <br>
    

          
</head>
<body>
    <style> 
.row{ 
 height:400px;
                width:30%;
                margin:2% auto;
            } 
            </style>
</body>
</html>

    
<html>

<?php
 
$sql = "SELECT * FROM products_info WHERE Type = 'Mobile Phone'"; 
$result = mysqli_query($db, $sql);
while($product = $result -> fetch_assoc())
{
    
        $id = $product['ID'];
        $name = $product['Name'];
        $price  = $product['Price($)'];
        echo "
   
    <div class = 'row'>

    <div class='Image'>
   <img src='./images/$id.jpg' height = '200' width ='160'>
    </div>
    <div class='name'>$name</div>
    
    <div class='specs'>
        <button><a href='specifications.php?id=$id'>Specifications</a></button>
    </div>
    
    <div class='price'>$$price</div>
    
    <div class='purchase'>
        <form method='POST'>
            <button><a href='payment.php?id=$id'>Purchase</a></button>
        <form>
    </div>
    </div>

    ";    
}
?>