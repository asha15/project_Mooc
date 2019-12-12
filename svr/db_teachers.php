<?php
require_once 'db.php';

function db_teacher_read($args){

    $course_id = $args['course'];
    
    $query = "SELECT u.name, t.teachers_image, t.education, t.contact 
    FROm teacher t 
    LEFT join users u on u.id = t.user_id 
    where t.course_id = 1";

    $result = db_execute($query);
    succ_return($result);
}

?>