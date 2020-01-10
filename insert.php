<?php
require_once 'config.php';
require_once 'db.php';
require_once 'util.php';

$link = mysqli_connect("localhost", "rootuser", "123456789", "r");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

if(isset($_POST['add_lessons'])){

    $title = mysqli_real_escape_string($link, $_REQUEST['title']);
    $position = mysqli_real_escape_string($link, $_REQUEST['position']);
    $course = mysqli_real_escape_string($link, $_REQUEST['course']);
    $short_text = mysqli_real_escape_string($link, $_REQUEST['st']);
    $full_text = mysqli_real_escape_string($link, $_REQUEST['ft']);

    if(isset($_REQUEST['user'])){

    }else{$user_id = 1;}

    $course = strtolower($course);

    $sql = "SELECT id 
    FROM `courses`
    WHERE title = '$course'";

    $course_id =  mysqli_query($link, $sql);

    if(!empty($course_id)){
        foreach($course_id as $data){

            $id = $data['id'];

            $sql = "INSERT INTO `lessons`
             (`id`, `course_id`, `user_id`, `title`, `slug`, `lesson_image`,
              `short_text`, `full_text`, `position`, `free_lesson`, `published`, `created_at`,
               `updated_at`, `deleted_at`) 
            VALUES (NULL, '$id', '$user_id', '$title', NULL, NULL, 
            '$short_text', '$full_text', '$position', '0', '0', NULL, NULL, NULL)";

            mysqli_query($link, $sql);

        }
    }


    header('location: dashboard - lessons.php');
}
 
if(isset($_POST['add_courses'])){

    $title = mysqli_real_escape_string($link, $_REQUEST['name']);
    $description = mysqli_real_escape_string($link, $_REQUEST['des']);

    $sql = "INSERT INTO `courses` 
    (`id`, `title`, `slug`, `description`, `price`, `course_image`, `start_date`, `published`, `created_at`, `updated_at`, `deleted_at`) 
    VALUES (NULL, '$title ', NULL, '$description', NULL, NULL, NULL, '0', NULL, NULL, NULL)";

    mysqli_query($link, $sql);

    header('location: d-courses.php');
}

if(isset($_POST['add_users'])){
$user_name = mysqli_real_escape_string($link, $_REQUEST['username']);
$email     = mysqli_real_escape_string($link, $_REQUEST['email']);
$password  = mysqli_real_escape_string($link, $_REQUEST['psw']);
$role  = mysqli_real_escape_string($link, $_REQUEST['role']);

$sql = "INSERT INTO users 
    (name, email, password) VALUES 
    ('$user_name', '$email', md5('$password'))
";

mysqli_query($link, $sql);

$sql = "select max(id) as id from users";
$user_id = mysqli_query($link, $sql);
$role = strtolower($role);

foreach($user_id as $data){
    echo $data['id'];

    $id = $data['id'];

    if($role == 'student'){
        $sql = "INSERT INTO `role_user` (`role_id`, `user_id`) VALUES ('3', '$id')";
            mysqli_query($link, $sql);
    }else if ($role == 'teacher'){
        $sql = "INSERT INTO `role_user` (`role_id`, `user_id`) VALUES ('2', '$id')";
            mysqli_query($link, $sql);
    }else if($role == 'admin'){
        $sql = "INSERT INTO `role_user` (`role_id`, `user_id`) VALUES ('2', '$id')";
    
    }
}

header('location: dashboard - users.php');
}

mysqli_close($link);
?>