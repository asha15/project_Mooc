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
  max-height: 600px;
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
            <a class="nav-link" href="./dashboard - users.php">
              <p>Users</p>
            </a>
          </li>
          <li class="nav-item active ">
              <a class="nav-link" href="./dashboard - courses.php">
                <p>courses</p>
              </a>
          </li>
          <li class="nav-item active ">
              <a class="nav-link" href="./dashboard - lessons.php">
                <p>lessons</p>
              </a>
          </li>
          <li class="nav-item active ">
              <a class="nav-link" href="./dashboard - questions.php">
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
            <a class="navbar-brand" href="#pablo"></a>
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
            <h1>Add user</h1>

            <label for="name"><b>Name</b></label>
            <input type="text" placeholder="Enter Name" name="name" required>

            <label for="email"><b>Email</b></label>
            <input type="text" placeholder="Enter Email" name="email" required>

            <label for="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" required>

            <label for="role"><b>Role</b></label>
            <input type="text" placeholder="Student/Teacher" name="role" required>

            <button type="submit" class="btn">Add</button>
            <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
          </form>
          </div>
              <div class="row">
                <div class="col-md-12">
                  <div class="card">
                    <div class="card-header card-header-primary">
                      <h4 class="card-title ">Users list</h4>
                    </div>
                    <div class="card-body">
                      <div class="table-responsive">
                        <table class="table">
                          <thead class=" text-primary">
                            <th>
                              ID
                            </th>
                            <th>
                              Name
                            </th>
                            <th>
                              Email
                            </th>
                            <th>
                              Role
                            </th>
                          </thead>
                          <tbody>
                            <tr>
                              <td>
                                1
                              </td>
                              <td>
                                Dakota Rice
                              </td>
                              <td>
                                Niger
                              </td>
                              <td>
                                Oud-Turnhout
                              </td>
                            </tr>
                            <tr>
                              <td>
                                2
                              </td>
                              <td>
                                Minerva Hooper
                              </td>
                              <td>
                                Curaçao
                              </td>
                              <td>
                                Sinaai-Waas
                              </td>
                            </tr>
                            <tr>
                              <td>
                                3
                              </td>
                              <td>
                                Sage Rodriguez
                              </td>
                              <td>
                                Netherlands
                              </td>
                              <td>
                                Baileux
                              </td>
                            </tr>
                            <tr>
                              <td>
                                4
                              </td>
                              <td>
                                Philip Chaney
                              </td>
                              <td>
                                Korea, South
                              </td>
                              <td>
                                Overland Park
                              </td>
                            </tr>
                            <tr>
                              <td>
                                5
                              </td>
                              <td>
                                Doris Greene
                              </td>
                              <td>
                                Malawi
                              </td>
                              <td>
                                Feldkirchen in Kärnten
                              </td>
                            </tr>
                            <tr>
                              <td>
                                6
                              </td>
                              <td>
                                Mason Porter
                              </td>
                              <td>
                                Chile
                              </td>
                              <td>
                                Gloucester
                              </td>
                            </tr>
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
</body>
</html>
