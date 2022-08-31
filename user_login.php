<?php include('connect.php');?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
  </body>
  <div class="container-fluid my-3">
    <h2 class="text-center">User Login</h2>
    <div class ="row d-flex align-items-center justify-content-center">
        <div class ="col-lg-12 col-xl-6">
            <form action ="" method="post">
            <div class ="form-outline mb-4">
            <label for ="user_username" class="form-label">Username</label>
            <input type="text" id="user_username" class="form-control" placeholder="Enter your user name" autocomplete="off"
            required ="required" name="user_username"/>
          </div>
          
          <div class ="form-outline mb-4">
            <label for ="user_password" class="form-label">Password</label>
            <input type="password" id="user_password" class="form-control" placeholder="Enter your password" autocomplete="off"
            required ="required" name="user_password"/>
          </div>
          
          
          <div class ="mt-4 pt-2">
            <input type="submit" value="Login" class="big-info py-2 px-3
            border-0" name="user_login">
            <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an acoount ?<a 
            href="user_registration.php" class="text-danger"> Register</a> </p>
          </div>
            
            </form>
        </div>
    </div>

  </div>
  </body>
</head>
<body>
    
</body>
</html>
<?php
if(isset($_POST['user_login'])){
  $user_username=$_POST['user_username'];
  $user_pa=$_POST['user_password'];

  $select_query="Select * from `user_reg_table` where
   username='$user_username' ";

    $result=mysqli_query($db,$select_query);
    $row_count=mysqli_num_rows($result);
    $row_data=mysqli_fetch_assoc($result);
    if($row_count>0){
    if(password_verify($user_pa,$row_data['user_password'])){
      header("location:customer_home.php");
      exit();
    }else{
      echo "<script>alert('Invalid ')</script>";
    }
   }else{
    echo "<script>alert('Invalid Credentials')</script>";
   }}
  


?>
