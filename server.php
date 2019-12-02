<?php
session_start();
header("Access-Control-Allow-Origin: *");
require_once 'definition.php';
require_once 'util.php';

// initializing variables
$username = "";
$email    = "";
$role = "";
$errors = array(); 

// connect to the database
 $db = mysqli_connect('localhost', 'root', '', 'r');
// define('LOG_FILE', AUDIT_LOG_DIR.'/'.AUDIT_LOG_FILE_PREFIX.date("Ymd").AUDIT_LOG_FILE_SUFFIX.'.'.AUDIT_LOG_FILE_EXT);

// REGISTER USER
if (isset($_POST['reg_user'])) {
  // receive all input values from the form
  $username = mysqli_real_escape_string($db, $_POST['username']);
  $email = mysqli_real_escape_string($db, $_POST['email']);
  $password_1 = mysqli_real_escape_string($db, $_POST['password_1']);
  $password_2 = mysqli_real_escape_string($db, $_POST['password_2']);
  $role = mysqli_real_escape_string($db, $_POST['role']);
  // form validation: ensure that the form is correctly filled ...
  // by adding (array_push()) corresponding error unto $errors array
  if (empty($username)) { array_push($errors, "Username is required"); }
  if (empty($email)) { array_push($errors, "Email is required"); }
  if (empty($password_1)) { array_push($errors, "Password is required"); }
  if ($password_1 != $password_2) {
	array_push($errors, "The two passwords do not match");
  }

  // first check the database to make sure 
  // a user does not already exist with the same username and/or email
  $user_check_query = "SELECT * FROM users WHERE name='$username' OR email='$email' LIMIT 1";
  $result = mysqli_query($db, $user_check_query);
  $user = mysqli_fetch_assoc($result);
  
  // if ($user) { // if user exists
  //   if ($user['username'] === $username) {
  //     array_push($errors, "Username already exists");
  //   }

  //   if ($user['email'] === $email) {
  //     array_push($errors, "email already exists");
  //   }
  // }

  // Finally, register user if there are no errors in the form
  if (count($errors) == 0) {
  	$password = md5($password_1);//encrypt the password before saving in the database

  	$query = "INSERT INTO users (name, email, password) 
  			  VALUES('$username', '$email', '$password')";
    mysqli_query($db, $query);
    
    $query = "Select max(id) from users";
    $user_id = mysqli_query($db, $query);

    $role_id = '';
    if($role == 'student'){
      $role_id = '3';
    }else{
      $role_id = '2';
    }

    // $role_id = mysql_fetch_array($role_id);

    // $query = "INSERT INTO `role_user` (role_id, user_id)
    //         VALUES ($role_id, $user_id)";

    //         echo $query;
    // mysqli_query($db, $query);        
  	// $_SESSION['username'] = $username;
  	// $_SESSION['success'] = "You are now logged in";

    if($role_id == '3'){
      header('location: courses.php');
    }else{
      header('location: login.php');
    }

  	
  }
}

// LOGIN USER
if (isset($_POST['login_user'])) {
  $email = mysqli_real_escape_string($db, $_POST['email']);
  $password = mysqli_real_escape_string($db, $_POST['password']);
  echo $email;

  //debug(__FILE__,__FUNCTION__,__LINE__, $username);
  if (empty($email)) {
  	array_push($errors, "email is required");
  }
  if (empty($password)) {
  	array_push($errors, "Password is required");
  }

  if (count($errors) == 0) {
    $query = "SELECT * FROM users WHERE email='$email' AND password= md5('$password')";
    echo $query;
    $results = mysqli_query($db, $query);
  	if (mysqli_num_rows($results) == 1) {
  	  $_SESSION['username'] = $username;
  	  $_SESSION['success'] = "You are now logged in";
  	  header('location: courses.php');
  	}else {
  		array_push($errors, "Wrong username/password combination");
  	}
  }
}

?>