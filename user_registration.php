<?php include('connect.php');?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User -registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
  </body>
  <div class="container-fluid my-3">
    <h2 class="text-center">REGISTER ACCOUNT</h2>
    <div class ="row d-flex align-items-center justify-content-center">
        <div class ="col-lg-12 col-xl-6">
            <form action ="" method="post">
            <div class ="form-outline mb-4">
            <label for ="user_username" class="form-label">Username</label>
            <input type="text" id="user_username" class="form-control" placeholder="Enter your user name" autocomplete="off"
            required ="required" name="user_username"/>
          </div>
          <div class ="form-outline mb-4">
            <label for ="user_email" class="form-label">Email</label>
            <input type="email" id="user_email" class="form-control" placeholder="Enter your email" autocomplete="off"
            required ="required" name="user_email"/>
          </div>
          <div class ="form-outline mb-4">
            <label for ="user_password" class="form-label">Password</label>
            <input type="password" id="user_password" class="form-control" placeholder="Enter your password" autocomplete="off"
            required ="required" name="user_password"/>
          </div>
          <div class ="form-outline mb-4">
            <label for ="conf_user_password" class="form-label">Confirm Password</label>
            <input type="password" id="conf_user_password" class="form-control" placeholder="Confirm password" autocomplete="off"
            required ="required" name="conf_user_password"/>
          </div> 
          <div class ="form-outline mb-4">
            <label for ="user_contact" class="form-label">Contact</label>
            <input type="text" id="user_contact" class="form-control" placeholder="Enter your mobile number" autocomplete="off"
            required ="required" name="user_contact"/>
          </div>
          <div class ="mt-4 pt-2">
            <input type="submit" value="Register" class="big-info py-2 px-3
            border-0" name="user_register">
            <p class="small fw-bold mt-2 pt-1 mb-0">Already have an account ?<a 
            href="user_login.php" class="text-danger"> Login</a> </p>
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
if(isset($_POST['user_register'])){
  $user_username=$_POST['user_username'];
  $user_email=$_POST['user_email'];
  $user_password=$_POST['user_password'];
  $hash_password=password_hash($user_password,PASSWORD_DEFAULT);
  $conf_user_password=$_POST['conf_user_password'];
  $user_contact=$_POST['user_contact'];

  $select_query="Select * from `user_reg_table` where username='$user_username' or user_email='$user_email' ";
  $result=mysqli_query($db,$select_query);
  $rows_count=mysqli_num_rows($result);
  if($rows_count > 0){
    echo "<script>alert('Username or Email already exist')</script>";
  } else if($user_password!=$conf_user_password){
    echo "<script>alert('Password do not match')</script>";

  }
  else {
  $insert_query="insert into `user_reg_table`(username,user_email,user_password,
 user_contact) values ('$user_username','$user_email','$hash_password','$user_contact')";
  $sql_execute=mysqli_query($db,$insert_query);
  if($sql_execute){
    echo "<script>alert('Data inserted successfully')</script>";
  }
  else
  {
    die(mysqli_error($db));
  }
}
  }
  ?>

 
