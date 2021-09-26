<?php
include 'app.php';
?>

    <section id="doctors" class="doctors">

    	<?php 

    $doctorid = $_GET['doctorid'];
    $type = $_GET['type'];
    $time = $_GET['time'];

        if (isset($_POST['OTP'])){
          if( $_POST['OTP'] == $_SESSION['otp']){

      ?>
      <head>
        <meta http-equiv="refresh" content="time; URL=appointmentHandler.php?doctorid=<?php echo $doctorid ?>&time=<?php echo $_GET["time"] ?>&type=1\" />
        <meta http-equiv="refresh" content="0; URL=http://localhost:8080/Dr.Bing/appointmentHandler.php?doctorid=<?php echo $doctorid ?>&time=<?php echo $_GET["time"] ?>&type=1" />
      </head>
      window.location.href = "appointmentHandler.php?doctorid=<?php echo $doctorid ?>&time=<?php echo $_GET["time"] ?>&type=1\";
      <?php  
    
          }
        }

    		// $doctorid = $_GET['doctorid'];
    		// $sql = "SELECT * FROM doctors WHERE id = '$doctorid'";
    		// $result = mysqli_query($conn, $sql);
    		// while($row = mysqli_fetch_array($result)){

    	 ?>



      <div class="container">

        <div class="section-title">
          <h2>Confirm your Appointment</h2>
        </div>

        <div class="row">

<!--           <div class="col-lg-6">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="assets/img/doctors/doctors-1.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4><?php echo $row['name'] ?></h4>
                <br>
                <span>On <?php echo $_GET['time']; ?></span>
                <p><?php echo $row['Speciality'] ?></p>
              </div>
              
            </div>
          </div> -->

          <div class="col-lg-6">
          	<form action="verifyOTP.php?doctorid=<?php echo $doctorid ?>&time=<?php echo $_GET["time"] ?>&type=1" method="post" role="form" class="php-email-form">

          			
		            <div class="col-md-8 form-group">
		              <input type="text" class="form-control" name="OTP" id="OTP" placeholder="OTP" data-rule="email" data-msg="Please enter a valid email">
		              <div class="validate"></div>
		              <br>
		              <button type="submit" name="login-submit" class="btn btn-success">
                  		Verify OTP
                </button>
		           </div>
		           
		        </form>



          </div>

        </div>

      </div>
    </section><!-- End Doctors Section -->