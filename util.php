<?php
header("Access-Control-Allow-Origin: *");
require_once 'definition.php';
require_once 'db.php';

define('LOG_FILE', AUDIT_LOG_DIR.'/'.AUDIT_LOG_FILE_PREFIX.date("Ymd").AUDIT_LOG_FILE_SUFFIX.'.'.AUDIT_LOG_FILE_EXT);

// function db_execute($query, &$total = 0) {
//     $conn = get_conn();
//     mysqli_next_result($conn);
//     $result = mysqli_query($conn, $query);
  
//     $ret = array();
//     if ($result === true) $ret = $conn->insert_id;
//     $total = get_total_rows($conn);
    
//     $db_errno = mysqli_errno($conn);
//     if (!$result && $db_errno) {
//       warn(__FILE__, __FUNCTION__, __LINE__, $query, $result, $db_errno);
//     }
  
//     if ($result instanceof mysqli_result) {
//       while ($row = $result->fetch_assoc()) array_push($ret, $row);
//     }
  
//     return $ret;
//   }
?>