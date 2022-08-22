<!DOCTYPE html>
<html>
<head>
    <title>NORTH SOUTH ELECTRONICS</title>
    <style>
        #main {
            background-color: blue;
            height: 300px;
            border-radius: 30px;
            color: antiquewhite;
        }
        header {
            font-weight: bold;
            margin-left: 500px;
        }
        h1 {
            margin-left: 600px;
        }
        un {
            margin-left: 550px;
        }
        pw {
            margin-left: 553px;
            padding-bottom: 550px;
        }
        login {
            margin-left: 625px;
        }
    </style>
</head>
<body>
    <div id="main">
        <header>WELCOME TO NORTH SOUTH ELECTRONICS</header>
        <h1>Owners</h1>
        <form method="POST">
                <un>Username <input type="text" name="username" class="text" autocomplete="off" required placeholder="Username"><un><br>
                <pw>Password <input type="password" name="password" class="text" required placeholder="Password"><pw><br>
                <login><input type="Submit" name="submit" value="Login"><login>
        </form>
    </div>



</body>

</html>
<?php
$db = mysqli_connect("localhost","root","","cse311_project");

if(isset($_POST['submit'])){
    $user = $_POST['username'];
    $pass = $_POST['password'];
    $sql = "SELECT password FROM owner_info WHERE username='$user'";
    $result = mysqli_query($db,$sql);
    if($row=mysqli_fetch_array($result)){
        if($pass==$row['password']){
            header("location:home_owners.php");
            exit();
        }
        else{
            echo "Invalid Password";
        }
    }
    else{
        echo "Invalid Username";
    }
    
}


?>