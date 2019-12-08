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
  
  if (count($errors) == 0) {
  	$password = md5($password_1);//encrypt the password before saving in the database

  	$query = "INSERT INTO users (name, email, password) 
  			  VALUES('$username', '$email', '$password')";
    mysqli_query($db, $query);
    
    $query = "SELECT max(id) AS id FROM users";
    $user_id = db_execute($query);
    $user_id = $user_id['0']['id'];
    debug(__FILE__,__FUNCTION__,__LINE__, $user_id);

    $role_id = '';
    if($role == 'student'){
      $role_id = '3';
    }else{
      $role_id = '2';
    }

    if(!empty($user_id && $role_id)){
    $query = "INSERT INTO `role_user` (role_id, user_id)
            VALUES ($role_id, $user_id)";

    db_execute($query);
    }

    if($role_id == '3'){
      header('location: courses.php');
    }else{
      header('location: dashboard.php');
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
    $query = "SELECT id FROM users WHERE email='$email' AND password= md5('$password')";
    echo $query;
    $results = db_execute($query);

    debug(__FILE__,__FUNCTION__,__LINE__, $results);

    $id = $results['id'];
    $role_id = '';
    $query = "SELECT role_id FROM role_user WHERE user_id = '$id'";
    echo $query;
    $role_id = db_execute($query);
    echo $role_id;

  	if (mysqli_num_rows($role_id) == 1) {
      if($role_id = 1){ header('location: dashboard.php'); }
      else if($role_id = 2){ header('location: dashboard_teachers.php'); }
      else header('location: courses.php');
  	}else {
  		array_push($errors, "Wrong username/password combination");
  	}
  }
}

?>