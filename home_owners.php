<!DOCTYPE html>
<html>
    <head>
       <style>
             * {
                background-color: lightblue;
             }
             in {
                margin-left: 1100px;
             }
             logout {
                margin-left: 600px;
             }
       </style>
    </head>
    <body>
        <div>
            <h1>NORTH SOUTH ELECTRONICS</h1>
            <form method="POST">
                  <pro><input type="Submit" name="submit" value="Products"></pro>
                  <in><input type="Submit" name="submit" value="Invoice"></in>
                  <logout><input type="Submit" name="submit" value="Logout"></logout>
            </form>
        </div>
        
    </body>
</html>
<?php
$db = mysqli_connect("localhost","root","","cse311_project");

if(isset($_POST['submit'])) {
    if($_POST['submit']=="Logout") {
       header("location:owners.php");
       exit();
    }
    else if($_POST['submit']=="Products") {
       header("location:products2.php");
       exit();
    }
    else if($_POST['submit']=="Invoice") {
       header("location:invoice.php");
       exit();
    }
    else {
       echo "There is an error";
    }
}

?>