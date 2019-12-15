<?php
require_once 'db.php';

function db_course_read($args){

    $where_array = array();
    
    if (isset($args['course'])) {
        $course = $args['course'];
        if (is_numeric($course)) {
          array_push($where_array, "c.id = '$course'");
        } else {
          array_push($where_array, "LOWER(c.name) = '$course'");
        };
    }

    if (isset($args['user'])) {
      $user = $args['user'];
      if (is_numeric($user)) {
        array_push($where_array, "u.id = '$user'");
      } else {
        array_push($where_array, "LOWER(u.name) = '$user'");
      };
  }

    $where_clause = "";
    if ($where_array) $where_clause = " AND " . implode(" AND ", $where_array);  

    $query = "SELECT c.id AS course_id, c.title, c.description, c.course_image, u.name as teacher, t.teachers_image,
     t.education, t.contact
    FROM courses c
    LEFT JOIN teacher t ON t.course_id = c.id
    LEFT JOIN users u ON t.user_id = u.id
    where '' = '' $where_clause";

    $result = db_execute($query); 
    debug(__FILE__,__FUNCTION__,__LINE__, $query);

    succ_return($result);
}

function db_course_add($args){

  $title = $args['title'];
  $description = $args['description'];
  $course_image = $args['img'];
  $url_base = $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['SERVER_NAME'];
 // $start = $args['date'];

  $query = "INSERT INTO `courses` (
    `id`, `title`, `description`, `course_image`
  ) VALUE (
    NULL, '$title', '$description', CONCAT('$url_base', '/', 'Mooc/svr/img', '/', '$course_image')
  )";

  debug(__FILE__,__FUNCTION__,__LINE__, $query);
  db_execute($query); 
     
}

?>