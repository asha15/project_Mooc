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
  <script src="assets/js/material-dashboard.js"></script>
</head>

<body>
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white">
      <!--
      Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

      Tip 2: you can also add an image using data-image tag
  -->
      <div class="logo">
        
        <a href="http://www.creative-tim.com" class="simple-text logo-normal">
          Mooc
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item active ">
            <a class="nav-link" href="./courses.php">
              <i class="material-icons">dashboard</i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="nav-item active ">
              <a class="nav-link" href="./dashboard_teachers - courses.php">
                <i class="material-icons">content_paste</i>
                <p>courses</p>
              </a>
          </li>
          <li class="nav-item active ">
              <a class="nav-link" href="./dashboard_teachers - lessons.php">
                <i class="material-icons">library_books</i>
                <p>lessons</p>
              </a>
          </li>
          <li class="nav-item active ">
              <a class="nav-link" href="./dashboard_teachers-questions.php">
                <i class="material-icons">bubble_chart</i>
                <p>questions</p>
              </a>
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
            <a class="navbar-brand" href="#pablo">You are logged in!</a>
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
          
        </div>
      </div>
      <footer class="footer">
        <div class="container-fluid">
         
          <!-- your footer here -->
        </div>
      </footer>
    </div>
  </div>
</body>

</html>
