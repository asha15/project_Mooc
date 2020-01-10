<?php
  require_once ('server.php');
?>
<!doctype html>
<html lang="en">

<head>
  <title>Mooc</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- Material Kit CSS -->
  <link href="assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
</head>

<body>
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white">
      <!--
      Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

      Tip 2: you can also add an image using data-image tag
  -->
      <div class="logo">
        
        <a href="./courses.php" class="simple-text logo-normal">
          Mooc
        </a>
      </div>
      <div class="sidebar-wrapper">
      <ul class="nav">
          <li class="nav-item active ">
            <a class="nav-link" href="./dashboard_teachers.php">
              <i class="material-icons">dashboard</i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="nav-item active ">
          <?php

            $args = $_REQUEST;
            $user = $args['user'];
            print "<a class=\"nav-link\" href=\"./dashboard_teachers - Courses.php?user=$user\">
                  <i class=\"material-icons\">content_paste</i>
                  <p>courses</p>
                  </a>
            ";
          ?>
          </li>
          <li class="nav-item active ">
          <?php

            $args = $_REQUEST;
            $user = $args['user'];
            print "<a class=\"nav-link\" href=\"./dashboard_teachers - lessons.php?user=$user\">
                  <i class=\"material-icons\">library_books</i>
                  <p>Lessons</p>
                  </a>
            ";
          ?>
          </li>
          <li class="nav-item active ">
          <?php

            $args = $_REQUEST;
            $user = $args['user'];
            print "<a class=\"nav-link\" href=\"./dashboard_teachers-questions.php?user=$user\">
                  <i class=\"material-icons\">bubble_chart</i>
                  <p>questions</p>
                  </a>
            ";
          ?>
          </li>
          <li class="nav-item active ">
              <a class="nav-link" href="./home.php">
                <i class="material-icons">library_books</i>
                <p>Logout</p>
              </a>
          </li>
          <!-- your sidebar here -->
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="#pablo">
                  <i class="material-icons">notifications</i> Notifications
                </a>
              </li>
              <!-- your navbar here -->
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <!-- your content here -->
          <div class="row">
              <div class="col-md-12">
                <div class="card">
                  <div class="card-header card-header-primary">
                    <h4 class="card-title ">Questions</h4>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table">
                        <thead class=" text-primary">
                          <th>
                            ID
                          </th>
                          <th>
                            Course ID
                          </th>
                          <th>
                            Lesson ID
                          </th>
                          <th>
                            Question
                          </th>
                          <th>
                            Option text
                          </th>
                          <th>
                            Answer
                          </th>
                        </thead>
                        <tbody class="question-body">
                        <?php

$conn = new mysqli("localhost", "rootuser", "123456789", "r");

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$args = $_REQUEST;
                        $user = $args['user'];

$sql = "SELECT DISTINCT c.title as course, l.title as lesson, q.question,
        qo.option_text as answer, qo.correct 
        FROM questions q
         LEFT JOIN questions_options qo ON qo.question_id= q.id
        LEFT JOIN question_test qt ON qt.question_id = q.id
        LEFT JOIN tests t ON t.id = qt.test_id
        LEFT JOIN tests t1 ON t1.id = qt.test_id
        LEFT JOIN courses c ON c.id = t1.course_id
        LEFT JOIN lessons l ON l.id = t1.lesson_id 
        WHERE l.user_id = $user";

$result = $conn->query($sql);
$id = 1;

foreach($result as $data){
  print "<tr>";

    $course = $data['course'];
    $lesson = $data['lesson'];
    $question = $data['question'];
    $answer = $data['answer'];
    $correct = $data['correct'];

    print "<td>$id</td>";
    print "<td>$course</td>";
    print "<td>$lesson</td>";
    print "<td>$question</td>";
    print "<td>$answer</td>";
    print "<td>$correct</td>";
    print "</tr>";

    $id ++;
}
?>

                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
        </div>
      </div>
      <footer class="footer">
        <div class="container-fluid">
          
          <!-- your footer here -->
        </div>
      </footer>
    </div>
  </div>
  <script src="assets/js/jquery.min.js" type="text/javascript"></script>
  <script type="text/javascript" src="assets/js/questions.js"></script>
</body>
</html>
