<?php
$db = mysqli_connect("localhost","root","","cse311_project");
$sql = "SELECT * FROM products_info";
$result = mysqli_query($db, $sql);

?>
<html>
    <body>
        <div>
            <h1>NORTH SOUTH ELECTRONICS</h1>
            <form method="POST">
                <add>+<input type="Submit" name="submit" value="Add products"></add>
            </form>
        </div>
        <style>
            * {
                background-color: lightblue;
            }
            add {
                font-size: 35px;
                font-weight: bold;
                position: relative;
                right: -500px;
            }
            .row{
                height:400px;
                width:30%;
                margin:2% auto;
            }
            .Image{
                height:200px;
                width:160px;
                margin:4%;
            }
            .name {
                font-weight: bold;
            }
            a{
                color:black;
                text-decoration:none;
            }
            a:hover{
                text-decoration: underline;
            }
        </style>

   <?php
        if(isset($_POST['submit'])) {
            if($_POST['submit']=="Add products") {
                header("location:add_product.html");
                exit();
            }
        }
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
            
            <div class='remove'>
                <form method='POST'>
                    <button type='Submit'><a href='remove.php'>Remove</a></button>
                <form>
            </div>
        </div>
        
            ";
        }
   ?>
    </body>
</html>
