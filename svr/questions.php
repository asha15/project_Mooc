<?php
require_once 'db_questions.php';
require_once 'util.php';
$action = process_request_and_get_action();
info(__FILE__, __FUNCTION__, __LINE__, $action, reset_pass($_REQUEST));

switch ($action) {
  case ACTION_READ:
    debug(__FILE__,__FUNCTION__,__LINE__, 'true');
    db_questions_read($_REQUEST);
    break;
  case ACTION_ADD:
    debug(__FILE__,__FUNCTION__,__LINE__, 'true');
    db_questions_add($_REQUEST);
    break;  
  case ACTION_MOD:
    update_lessons_profile($_REQUEST);
    break;
  default:
    exit(fail_return(ERR_UNKNOWN_ACTION, false));
}
?>