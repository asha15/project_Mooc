<?php
require_once 'db.php';

function db_user_read($args){
   debug(__FILE__,__FUNCTION__,__LINE__, 'true');
   $query = "SELECT * from users"; 

   $result = db_execute($query); 
   debug(__FILE__,__FUNCTION__,__LINE__, $result);

   succ_return($result);
}

function  add_teachers_details($args){
   $course_id = $args['course'];
   $img = $args['img'];
   $education = $args['education'];
   $contact = $args['contact'];
   $url_base = $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['SERVER_NAME'];
   $id = get_user_id($args);

   $query = "INSERT INTO `teacher` (
      `id`, `user_id`, `course_id`, `teachers_image`, `education`, `contact`
    ) VALUE (
      NULL, '$id', '$course_id', CONCAT('$url_base', '/', 'Mooc/svr/img', '/', '$img'), '$education', '$contact'
    )";

    debug(__FILE__,__FUNCTION__,__LINE__, $query);
    db_execute($query); 

}

function  db_user_add($args){

   $role = $args['role'];

   add_basic_info($args);
   add_role_user($args);

   if ( $role == 2){  
      add_teachers_details($args);
   }
}

function add_basic_info($args){

   $name = $args['name'];
   $email = $args['email'];
   $password = $args['pass'];

   $query = "INSERT INTO `users` (
      `id`, `name`, `email`, `password`, `created_at`, `updated_at`
    ) VALUE (
      NULL, '$name', '$email', sha1('$password'), NULL, NULL
    )";

    debug(__FILE__,__FUNCTION__,__LINE__, $query);
    db_execute($query);  
}

function add_role_user($args){

   $id = get_user_id($args);
   $role = $args['role'];

   $query = "INSERT INTO `role_user`(
      `role_id`, `user_id`
   ) VALUE (
      $role, $id
   )";
   debug(__FILE__,__FUNCTION__,__LINE__, $query);
   db_execute($query);  
}

function get_user_id($args){

   $name = $args['name'];

   $query = "select id from users where name  = '$name'
   ";

   $result = db_execute($query);
   debug(__FILE__,__FUNCTION__,__LINE__, $result);
   return $result['0']['id'];
}


?>