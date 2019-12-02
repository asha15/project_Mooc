<?php
require_once 'db.php';

function db_lessons_read($args){
    
    $course = $args['course'];
    $user = $args['user'];
   
    $query = "select l.id as lesson_id, u.name as teacher, c.title as course, l.lesson_image, l.short_text, l.full_text
    from lessons l
    left outer join users u on u.id = l.user_id
    left outer join courses c on c.id = l.course_id
    where l.course_id = $course ANd l.user_id = $user";

    $result = db_execute($query); 
    debug(__FILE__,__FUNCTION__,__LINE__, $query);

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