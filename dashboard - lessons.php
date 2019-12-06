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

<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}


/* The popup form - hidden by default */
.form-popup {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 500px;
  max-height: 700px;
  padding: 10px;
  background-color: white;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
  background-color: #9c27b0;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}
</style>
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
            <a class="nav-link" href="./dashboard - users.php">
              <i class="material-icons">person</i>
              <p>Users</p>
            </a>
          </li>
          <li class="nav-item active ">
              <a class="nav-link" href="./dashboard - courses.php">
                <i class="material-icons">content_paste</i>
                <p>courses</p>
              </a>
          </li>
          <li class="nav-item active ">
              <a class="nav-link" href="./dashboard - lessons.php">
                <i class="material-icons">library_books</i>
                <p>lessons</p>
              </a>
          </li>
          <li class="nav-item active ">
              <a class="nav-link" href="./dashboard - questions.php">
                <i class="material-icons">bubble_chart</i>
                <p>questions</p>
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

          <button onclick="openForm()">Add new</button>
          <br>
          <br>
          <div class="form-popup" id="myForm">
  
          <form action="/action_page.php" class="form-container">
            <h3>Add leson</h3>

            <label for="name"><b>Name</b></label>
            <input type="text" placeholder="Enter Name" name="name" required>

            <label for="position"><b>position</b></label>
            <input type="text" placeholder="Enter position" name="position" required>

            <label for="course"><b>course</b></label>
            <input type="text" placeholder="Enter course name" name="course" required>

            <label for="st"><b>short text</b></label>
            <input type="text" placeholder="Enter short text" name="st" required>

            <label for="ft"><b>Full text</b></label>
            <input type="text" placeholder="Enter full text" name="ft" required>

            <button type="submit" class="btn">Add</button>
            <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
          </form>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title ">Lessons</h4>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table">
                      <thead class=" text-primary">
                        <th>
                          ID
                        </th>
                        <th>
                          Course 
                        </th>
                        <th>
                          Title
                        </th>
                        <th>
                          Position
                        </th>
                      </thead>
                      <tbody class="lessons-body">
                      
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

  <script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
</script>
<script src="assets/js/jquery.min.js" type="text/javascript"></script>

<script type="text/javascript" src="assets/js/lessons.js"></script>
</body>
</html>
