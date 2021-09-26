<?php 

include_once 'db.inc.php';
session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Dr. Bing</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

</head>

<body>

  <!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-none d-lg-flex align-items-center">
    <div class="container d-flex">
      <div class="contact-info mr-auto">
        <i class="icofont-envelope"></i> <a href="mailto:contact@example.com">contact@drbing.com</a>
        <i class="icofont-phone"></i> +91 9852156321
        <i class="icofont-google-map"></i> Central Avenue, Mumbai
      </div>
      <div class="social-links">
        <a href="#" class="twitter"><i class="icofont-twitter"></i></a>
        <a href="#" class="facebook"><i class="icofont-facebook"></i></a>
        <a href="#" class="instagram"><i class="icofont-instagram"></i></a>
        <a href="#" class="skype"><i class="icofont-skype"></i></a>
        <a href="#" class="linkedin"><i class="icofont-linkedin"></i></i></a>
      </div>
    </div>
  </div>

  <!-- ======= Header ======= -->
  <header id="header" class="sticky-top">
    <div class="container d-flex align-items-center">

      <h1 class="logo mr-auto"><a href="index.php">Dr. Bing</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="index.php">Home</a></li>
          <li><a href="about.php">About</a></li>
          
          <li><a href="contact.php">Contact</a></li>
          <?php

                if (!isset($_SESSION["user"]) && !isset($_SESSION['doctor'])){
            ?>
                <li class="nav-item">
                    <a class="nav-link" href="login.php">Login</a>
                </li>
            <?php                         
                }
                elseif(isset($_SESSION['user']))
                {
            ?>
                <li><a href="services.php">Services</a></li>
          <li><a href="findDoctor.php">Doctors</a></li>
                <li class="drop-down"><a href=""><?php echo $_SESSION["user"];?></a>
                    <ul>
                      <li><a href="#">Profile</a></li>
                      <li class="drop-down"><a href="https://www.fitbit.com/oauth2/authorize?response_type=token&client_id=22C5DL&redirect_uri=http://localhost:8080/Dr.Bing/fitbit.php/&scope=activity%20heartrate%20location%20nutrition%20profile%20settings%20sleep%20social%20weight&expires_in=604800">Send Fitbit Data</a>
                        <!-- <ul>
                          <li><a href="#">Deep Drop Down 1</a></li>
                          <li><a href="#">Deep Drop Down 2</a></li>
                          <li><a href="#">Deep Drop Down 3</a></li>
                          <li><a href="#">Deep Drop Down 4</a></li>
                          <li><a href="#">Deep Drop Down 5</a></li>
                        </ul> -->
                      </li>
                      <li><a href="view.appointment.php">View Appointments</a></li>
                      <li><a href="medicalhistory.php">Update Medical History</a></li>
                      <li><a href="view.prescription.php">View Prescriptions</a></li>
                      <li><a href="logout.php">Logout</a></li>
                    </ul>
                  </li>
            <?php
                }
                else
                {
                    if (isset($_SESSION['doctor'])){
            ?>
            <li class="drop-down"><a href=""><?php echo $_SESSION["doctor"];?></a>
                    <ul>
                      <li><a href="#">Profile</a></li>
                      <li><a href="docAppointment.php">View Appointments</a></li>
                      <li><a href="logout.php">Logout</a></li>
                    </ul>
                  </li>
            <?php
              }
            }
            ?>

        </ul>
      </nav><!-- .nav-menu -->
      <?php
              
                    if (isset($_SESSION['user'])){
            ?>
      <a href="appointment.php" class="appointment-btn scrollto">Make an Appointment</a>
        <ul class="navbar-nav ml-auto">
            <!-- Authentication Links -->
          <?php } ?>
        </ul>
    </div>
  </header><!-- End Header -->

    <div id="preloader"></div>
  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/venobox/venobox.min.js"></script>
  <script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="assets/vendor/counterup/counterup.min.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
  <script type="text/javascript">$(function(){$("#footer").load("footer.php");});</script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>