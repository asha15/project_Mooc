<?php
require_once 'db_lessons.php';
require_once 'util.php';
$action = process_request_and_get_action();
info(__FILE__, __FUNCTION__, __LINE__, $action, reset_pass($_REQUEST));

switch ($action) {
  case ACTION_READ:
    db_lessons_read($_REQUEST);
    break;
  default:
    exit(fail_return(ERR_UNKNOWN_ACTION, false));
}
?>