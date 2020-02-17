<?php include('server.php')?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Mooc</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/gaia.css" rel="stylesheet"/>
    <link href="assets/css/login-register.css" rel="stylesheet" />
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">

    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="assets/js/login-register.js" type="text/javascript"></script>

    <!--     Fonts and icons     -->
    <link href='https://fonts.googleapis.com/css?family=Cambo|Poppins:400,600' rel='stylesheet' type='text/css'>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/css/fonts/pe-icon-7-stroke.css" rel="stylesheet">
</head>

<body>

    <nav class="navbar navbar-default navbar-transparent navbar-fixed-top" color-on-scroll="200">
        <!-- if you want to keep the navbar hidden you can add this class to the navbar "navbar-burger"-->
        <div class="container">
            <div class="navbar-header">
                <button id="menu-toggle" type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar bar1"></span>
                    <span class="icon-bar bar2"></span>
                    <span class="icon-bar bar3"></span>
                </button>
                <a href="http://www.creative-tim.com" class="navbar-brand">
                    Mooc - learn together
                </a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right navbar-uppercase">
                    <li class="dropdown">
                        <a href="#gaia" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-share-alt"></i> Share
                        </a>
                        <ul class="dropdown-menu dropdown-danger">
                            <li>
                                <a href="#"><i class="fa fa-facebook-square"></i> Facebook</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-twitter"></i> Twitter</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-instagram"></i> Instagram</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="btn btn-white btn-fill btn-lg " data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();" >Login</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
    </nav>

    <div class="modal fade login" id="loginModal">
            <div class="modal-dialog login animated">
                <div class="modal-content">
                   <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      <h4 class="modal-title">Login</h4>
                  </div>
                  <div class="modal-body">
                      <div class="box">
                           <div class="content">
                              <div class="form loginBox">
                                  <form method="post" action="login.php" accept-charset="UTF-8">
                                  <?php include('errors.php'); ?>
                                  <p>Email<input id="email" class="form-control" type="text" placeholder="Email" name="email" required></p>
                                  <p>Password<input type="password" name="password" required></p>
                                  <div class="input-group">
  	                                <button type="submit" class="btn" name="login_user">Login</button>
  	                              </div>
                                  </form>
                              </div>
                           </div>
                      </div>

                      <div class="box">
                          <div class="content registerBox" style="display:none;">
                           <div class="form">
                              <form method="post" html="{:multipart=>true}" data-remote="true" action="home.php" accept-charset="UTF-8">
                              <p>Name<input id="id" class="form-control" type="text" placeholder="Name" name="username" required></p>
                              <p>Email<input id="email" class="form-control" type="text" placeholder="Email" name="email" required></p>
                              <p>Password<input id="password" class="form-control" type="password" placeholder="Password" name="password_1" 
                              pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required></p>
                              <!--<p>Repeat password</p><input id="password_confirmation" class="form-control" type="password" placeholder="Repeat Password" name="password_2" required> -->
                              <p>I am a</p><input class="form-control" type="text" placeholder="Student/ Teacher" name="role" required> 
                              <br>
                           <!-- <div class="container">
                           <div class="dropdown">
                              <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">I am a
                              <span class="caret"></span></button>
                              <ul class="dropdown-menu" name="role">
                                  <li><a href="#" id = "student">student</a></li>
                                  <li><a href="#" id = "teacher">Teacher</a></li>
                              </ul>
                          </div>
                          </div> -->
                          <p id="demo"></p>                            
                          
                          <br>
                          <!-- <input class="btn btn-default btn-register" type="button" value="Create account" name="reg_user"> -->
                             <div class="input-group">
  	                            <button type="submit" class="btn" name="reg_user">Register</button>
  	                        </div>
                              </form>
                              </div>
                          </div>
                      </div>
                  </div>
                  <div class="modal-footer">
                      <div class="forgot login-footer">
                          <span>Looking to
                               <a href="javascript: showRegisterForm();">create an account</a>
                          ?</span>
                      </div>
                      <div class="forgot register-footer" style="display:none">
                           <span>Already have an account?</span>
                           <a href="javascript: showLoginForm();">Login</a>
                      </div>
                  </div>
                </div>
            </div>
        </div>
  </div>

    <div class="section section-header">
        <div class="parallax filter ">
            <div class="image"
                style="background-image: url('assets/img/m/cover.jpg')">
            </div>
            <div class="container">
                <div class="content">
                    <div class="title-area">
                        <p>Welcome</p>
                        <p>to</p>
                        <h1 class="title-modern">Mooc</h1>
                        <h3>Free online learning platform</h2>
                        <div class="separator line-separator">♦</div>
                    </div>

                    <div class="button-get-started">
                        <a class="btn btn-white btn-fill btn-lg" data-toggle="modal" href="javascript:void(0)" onclick="openRegisterModal();">
                            Register
                        </a>
                    </div>
                </div>

            </div>
        </div>
    </div>


    <div class="section">
        <div class="container">
            <div class="row">
                <div class="title-area">
                    <h2>Our Services</h2>
                    <div class="separator separator-danger">✻</div>
                    <p class="description">We promise you to give best courses from the qualified tutores</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="info-icon">
                        <div class="icon text-danger">
                            <i class="pe-7s-graph1"></i>
                        </div>
                        <h3>courses</h3>
                        <p class="description">we will provide you high qulity courses</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="info-icon">
                        <div class="icon text-danger">
                            <i class="pe-7s-note2"></i>
                        </div>
                        <h3>Content</h3>
                        <p class="description">We create a persona regarding the multiple wardrobe accessories that we provide..</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="info-icon">
                        <div class="icon text-danger">
                            <i class="pe-7s-music"></i>
                        </div>
                        <h3>Mentors</h3>
                        <p class="description">We will provide you qulified mentors</p>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="section section-our-team-freebie">
        <div class="parallax filter filter-color-black">
            <div class="image" style="background-image:url('assets/img/header-2.jpeg')">
            </div>
            <div class="container">
                <div class="content">
                    <div class="row">
                        <div class="title-area">
                            <h2>Who We Are</h2>
                            <div class="separator separator-danger">✻</div>
                            <p class="description">We are a group of people,who eagerly working to provide quality courses with free of charge</p>
                        </div>
                    </div>

                    <div class="team">
                        <div class="row">
                            <div class="col-md-10 col-md-offset-1">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="card card-member">
                                            <div class="content">
                                                <div class="avatar avatar-danger">
                                                    <img alt="..." class="img-circle" src="assets/img/faces/face_1.jpg"/>
                                                </div>
                                                <div class="description">
                                                    <h3 class="title">Tina</h3>
                                                    <p class="small-text">CEO / Co-Founder</p>
                                                    <p class="description">I miss the old Kanye I gotta say at that time I’d like to meet Kanye And I promise the power is in the people and I will use the power given by the people to bring everything I have back to the people.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="card card-member">
                                            <div class="content">
                                                <div class="avatar avatar-danger">
                                                    <img alt="..." class="img-circle" src="assets/img/faces/face_4.jpg"/>
                                                </div>
                                                <div class="description">
                                                    <h3 class="title">Andrew</h3>
                                                    <p class="small-text">Product Designer</p>
                                                    <p class="description">I miss the old Kanye I gotta say at that time I’d like to meet Kanye And I promise the power is in the people and I will use the power given by the people to bring everything I have back to the people.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="card card-member">
                                            <div class="content">
                                                <div class="avatar avatar-danger">
                                                    <img alt="..." class="img-circle" src="assets/img/faces/face_3.jpg"/>
                                                </div>
                                                <div class="description">
                                                    <h3 class="title">Michelle</h3>
                                                    <p class="small-text">Marketing Hacker</p>
                                                    <p class="description">I miss the old Kanye I gotta say at that time I’d like to meet Kanye And I promise the power is in the people and I will use the power given by the people to bring everything I have back to the people.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="section section-our-clients-freebie">
        <div class="container">
            <div class="title-area">
                <h5 class="subtitle text-gray">Here are some</h5>
                <h2>Clients Testimonials</h2>
                <div class="separator separator-danger">∎</div>
            </div>

            <ul class="nav nav-text" role="tablist">
                <li class="active">
                    <a href="#testimonial1" role="tab" data-toggle="tab">
                        <div class="image-clients">
                            <img alt="..." class="img-circle" src="assets/img/faces/face_5.jpg"/>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#testimonial2" role="tab" data-toggle="tab">
                        <div class="image-clients"> 
                            <img alt="..." class="img-circle" src="assets/img/faces/face_6.jpg"/>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#testimonial3" role="tab" data-toggle="tab">
                        <div class="image-clients">
                            <img alt="..." class="img-circle" src="assets/img/faces/face_2.jpg"/>
                        </div>
                    </a>
                </li>
            </ul>


            <div class="tab-content">
                <div class="tab-pane active" id="testimonial1">
                    <p class="description">
                        And I used a period because contrary to popular belief I strongly dislike exclamation points! We no longer have to be scared of the truth feels good to be home In Roman times the artist would contemplate proportions and colors. Now there is only one important color... Green I even had the pink polo I thought I was Kanye I promise I will never let the people down. I want a better life for all!
                    </p>
                </div>
                <div class="tab-pane" id="testimonial2">
                    <p class="description">Green I even had the pink polo I thought I was Kanye I promise I will never let the people down. I want a better life for all! And I used a period because contrary to popular belief I strongly dislike exclamation points! We no longer have to be scared of the truth feels good to be home In Roman times the artist would contemplate proportions and colors. Now there is only one important color...
                    </p>
                </div>
                <div class="tab-pane" id="testimonial3">
                    <p class="description"> I used a period because contrary to popular belief I strongly dislike exclamation points! We no longer have to be scared of the truth feels good to be home In Roman times the artist would contemplate proportions and colors. The 'Gaia' team did a great work while we were collaborating. They provided a vision that was in deep connection with our needs and helped us achieve our goals.
                    </p>
                </div>

            </div>

        </div>
    </div>


    <div class="section section-small section-get-started">
        <div class="parallax filter">
            <div class="image"
                style="background-image: url('assets/img/office-1.jpeg')">
            </div>
            <div class="container">
                <div class="title-area">
                    <h2 class="text-white">Would you like to learn with us?</h2>
                    <div class="separator line-separator">♦</div>
                    <p class="description"> We are keen to meet you in the learning process</p>
                </div>

                 <div class="button-get-started">
                        <a class="btn btn-white btn-fill btn-lg" data-toggle="modal" href="javascript:void(0)" onclick="openRegisterModal();">
                            Register
                        </a>
                    </div>
            </div>
        </div>
    </div>


    <footer class="footer footer-big footer-color-black" data-color="black">
        
    </footer>
    <script type="text/javascript">
        $(document).ready(function(){
            openLoginModal();
        });
    </script>
</body>

<!--   core js files    -->
<script src="assets/js/jquery.min.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.js" type="text/javascript"></script>

<!--  js library for devices recognition -->
<script type="text/javascript" src="assets/js/modernizr.js"></script>

<!--  script for google maps   -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

<!--   file where we handle all the script from the Gaia - Bootstrap Template   -->
<script type="text/javascript" src="assets/js/gaia.js"></script>

</html>
