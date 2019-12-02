<?php
require_once 'db.php';
function db_questions_read($args){

    $course = $args['course'];
    $lesson = $args['lesson'];

    $query = "select *
    from tests t
    left join question_test qt on qt.test_id = t.id
    left join questions q on q.id = qt.question_id
    left join questions_options qo on qo.question_id = q.id
    where t.course_id ='$course' and t.lesson_id = '$lesson' ";

    $result = db_execute($query); 
    debug(__FILE__,__FUNCTION__,__LINE__, $query);

    succ_return($result);
}
?>