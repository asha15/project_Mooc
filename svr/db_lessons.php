<?php
require_once 'db.php';

function db_lessons_read($args){

  $where_array = array();

    if (isset($args['user'])) {
      $user = $args['user'];
      if (is_numeric($user)) {
        array_push($where_array, "lessons.user_id = '$user'");
      } 
    }

    if (isset($args['course'])) {
      $course = $args['course'];
      if (is_numeric($course)) {
        array_push($where_array, "lessons.course_id = '$course'");
      } 
    }

    if (isset($args['id'])) {
      $id = $args['id'];
      if (is_numeric($id)) {
        array_push($where_array, "lessons.id = '$id'");
      } 
    }

    if (isset($args['position'])) {
      $position = $args['position'];
      if (is_numeric($position)) {
        array_push($where_array, "lessons.position = '$position'");
      } 
    }

  $where_clause = "";
    if ($where_array) $where_clause = " AND " . implode(" AND ", $where_array);  

  $query = "SELECT lessons.* 
  FROM `lessons` 
  WHERE '' = '' $where_clause";

  debug(__FILE__,__FUNCTION__,__LINE__. $query);
  $result = db_execute($query);
  succ_return($result);
}

function  db_lessons_add($args){
    $course_id = $args['course'];
    $user_id = $args['user'];
    $title = $args['title'];
    $short_text = $args['short'];
    $full_text = $args['full'];

    $query = "INSERT INTO `lessons` (
        `id`, `course_id`, `user_id`, `title`, `short_text`, `full_text`
      ) VALUE (
        NULL, '$course_id', '$user_id', '$title', '$short_text', '$full_text'
      )";
    
      debug(__FILE__,__FUNCTION__,__LINE__, $query);
      db_execute($query);
}
?>