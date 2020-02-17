<?php
session_start();
header("Access-Control-Allow-Origin: *");
require_once 'definition.php';
require_once 'util.php';
require_once 'db.php';

// initializing variables
$username = "";
$email    = "";
$role = "";
$errors = array(); 

// connect to the database
 $db = mysqli_connect('localhost', 'rootuser', '123456789', 'r');
// define('LOG_FILE', AUDIT_LOG_DIR.'/'.AUDIT_LOG_FILE_PREFIX.date("Ymd").AUDIT_LOG_FILE_SUFFIX.'.'.AUDIT_LOG_FILE_EXT);


if(isset($_POST['add_user'])){

  $name = mysqli_real_escape_string($db, $_POST['name']);
  $email = mysqli_real_escape_string($db, $_POST['email']);
  $password = mysqli_real_escape_string($db, $_POST['psw']);
  $role = mysqli_real_escape_string($db, $_POST['role']);
  
  $query = "INSERT INTO users (name, email, password) 
          VALUES('$name', '$email', '$password')";
          
  debug(__FILE__,__FUNCTION__,__LINE__, $query);
    mysqli_query($db, $query);

  $role_id = '';
    if($role == 'student'){
      $role_id = '3';
    }else{
      $role_id = '2';
    }

  if(!empty($role_id)){
    $query = "INSERT INTO `role_user` (role_id, user_id)
    VALUES ($role_id, $user_id)";

    db_execute($query);
  }

}

// REGISTER USER
if (isset($_POST['reg_user'])) {
  $username = mysqli_real_escape_string($db, $_POST['username']);
  $email = mysqli_real_escape_string($db, $_POST['email']);
  $password_1 = mysqli_real_escape_string($db, $_POST['password_1']);
  $password_2 = mysqli_real_escape_string($db, $_POST['password_2']);
  $role = mysqli_real_escape_string($db, $_POST['role']);

  if (empty($username)) { array_push($errors, "Username is required"); }
  if (empty($email)) { array_push($errors, "Email is required"); }
  if (empty($password_1)) { array_push($errors, "Password is required"); }
  if ($password_1 != $password_2) {
	array_push($errors, "The two passwords do not match");
  }

  $user_check_query = "SELECT * FROM users WHERE name='$username' OR email='$email' LIMIT 1";
  $result = mysqli_query($db, $user_check_query);
  $user = mysqli_fetch_assoc($result);
  
  if (count($errors) == 0) {
  	$password = md5($password_1);//encrypt the password before saving in the database

  	$query = "INSERT INTO users (name, email, password) 
  			  VALUES('$username', '$email', '$password')";
    mysqli_query($db, $query);
    
    $query = "Select max(id) as id from users";
    $user_id = db_execute($query);
    $user_id = $user_id['0']['id'];

    $role_id = '';
    if($role == 'student'){
      $role_id = '3';
    }else{
      $role_id = '2';
    }

    $query = "INSERT INTO `role_user` (role_id, user_id)
             VALUES ($role_id, $user_id)";

    db_execute($query);
    //         echo $query;
    // mysqli_query($db, $query);        
  	// $_SESSION['username'] = $username;
  	// $_SESSION['success'] = "You are now logged in";

    if($role_id == '3'){
      header('location: courses.php?user='.$user_id);
    }else{
      header('location: dashboard_teachers.php?user='.$user_id);
    }

  	
  }
}

// LOGIN USER
if (isset($_POST['login_user'])) {
  $email = mysqli_real_escape_string($db, $_POST['email']);
  $password = mysqli_real_escape_string($db, $_POST['password']);

  //debug(__FILE__,__FUNCTION__,__LINE__, $username);
  if (empty($email)) {
  	array_push($errors, "email is required");
  }
  if (empty($password)) {
  	array_push($errors, "Password is required");
  }

  if (count($errors) == 0) {
    $query = "SELECT id FROM users WHERE email='$email' AND password= md5('$password')";
    $result1 = db_execute($query);
    debug(_file_,_function_,_line_, $result1);

  // $results = mysqli_query($db, $query);
    //  $id = $results['id'];

    if(empty($result1)){
      header('location: error_register.php');
    }else{
    $id = $result1['0']['id'];

    $role_id = '';
    $query = "SELECT role_id FROM role_user WHERE user_id = '$id' ";
    $result2 = db_execute($query);
    $result2 = $result2['0']['role_id'];

      if($result2 == '1'){ 
        header('location: dashboard.php?user='.$id); 
      } else if($result2 == '2'){ 
        header('location: dashboard_teachers.php?user='.$id); 
      } else 
      //header('location: courses.php?user='.$id);
      header('location: error_register.php');
    }
  }
  
}

?>
