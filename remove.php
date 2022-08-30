<!DOCTYPE html>
<html>
    <body>
        <div>
            <h1>NORTH SOUTH ELECTRONICS</h1>
            <h>Do you want to remove this product?</h>
            <form method="POST">
                <yes><input type="Submit" name="submit" value="Yes"></yes>
                <no><input type="Submit" name="submit" value="No"></no>
            </form>
        </div>
    </body>


</html>
<?php
$db = mysqli_connect("localhost","root","","cse311_project");

if(isset($_POST['submit'])){
    $id = $_POST['ID'];
    
    $sql = "DELETE FROM products_info WHERE ID='$id'";
    $result = mysqli_query($db,$sql);

    if(isset($_POST['submit'])=="Yes") {
       while($row=mysqli_fetch_array($result)) {
         header("location:products2.php");
         exit();
    }
    }
    if(isset($_POST['submit'])=="No") {
          header("location:products2.php");
          exit();
    }
}





?>