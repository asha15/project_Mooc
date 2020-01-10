<?php require_once('server.php');?>

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
            <!-- /.navbar-collapse -->
        </div>
    </nav>
                      
    <div class="section section-header">
        <div class="parallax filter ">
            <div class="image"
                style="background-image: url('assets/img/m/cover.jpg');">
            </div>
            <div class="container">
                <div class="content">
                    <div class="title-area"> 
                        <h1 class="title-modern">Lessons</h1>
                        <div class="separator line-separator">♦</div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="section">
        <div class="container">
            <div class="row">
                <div class="title-area">
                    <p class="description">Select a lesson</p>
                </div>
            </div>
	    <div class="row courses">

		<?php

			 $conn = new mysqli("localhost", "rootuser", "123456789", "r");

                if ($conn->connect_error) {
                        die("Connection failed: " . $conn->connect_error);
		}

		$args = $_REQUEST;
	
		$lesson_id = $args['lesson'];

		$sql = "SELECT DISTINCT q.id, q.question, qo.option_text  as option
			FROM questions q
 		 LEFT JOIN questions_options qo ON qo.question_id= q.id
		 LEFT JOIN question_test qt ON qt.question_id = q.id
		 LEFT JOIN tests t ON t.id = qt.test_id
		 WHERE t.lesson_id = 4 ";

		 $result = $conn->query($sql);

		$q = 0;
		foreach($result as $row){

			
			$id = $row['id'];
			$question = $row['question'];
			$option  = $row['option'];
			
			if($q != $question){
			print "<h6>$question</h6>";
			}
			
			print "<p>$option</p>";
			$q = $question;
		
		}
		?>	       
            </div>          
        </div>
    </div>

    <div class="section">
        <div class="container">
            <a class="btn btn-grey btn-fill btn-lg " href="./questions.php> Take the quiz </a>
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
<script type="text/javascript" src="assets/js/courses.js"></script>

</html>
