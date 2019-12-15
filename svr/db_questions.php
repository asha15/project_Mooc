<?php
require_once 'db.php';
function db_questions_read($args){

    $where_array = array();

    if (isset($args['lesson'])) {
      $lesson = $args['lesson'];
      if (is_numeric($lesson)) {
        array_push($where_array, "t.lesson_id = '$lesson'");
      } 
    }

    if (isset($args['course'])) {
      $course = $args['course'];
      if (is_numeric($course)) {
        array_push($where_array, "t.course_id = '$course'");
      } 
    }

    $where_clause = "";
    if ($where_array) $where_clause = " AND " . implode(" AND ", $where_array);  


    $query = "SELECT t.title, q.question, q.question_image, qo1.option_text as option1,
    qo2.option_text as option2, qo3.option_text as option3, qo4.option_text as option4 
    FROM `tests` t 
    LEFT JOIN question_test qt ON qt.test_id = t.id 
    LEFT JOIN questions q ON q.id = qt.question_id 
    LEFT JOIN questions_options qo1 ON qo1.question_id = q.id 
    LEFT JOIN questions_options qo2 ON qo2.question_id = q.id 
    LEFT JOIN questions_options qo3 ON qo3.question_id = q.id 
    LEFT JOIN questions_options qo4 ON qo4.question_id = q.id 
    WHERE '' = '' $where_clause";

    $result = db_execute($query); 
    debug(__FILE__,__FUNCTION__,__LINE__, $query);

    succ_return($result);
}
?>