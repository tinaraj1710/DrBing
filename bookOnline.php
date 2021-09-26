<?php
include 'app.php';
?>

    <section id="doctors" class="doctors">

    	<?php 

    		$doctorid = $_GET['doctorid'];
    		$sql = "SELECT * FROM doctors WHERE id = '$doctorid'";
    		$result = mysqli_query($conn, $sql);
    		while($row = mysqli_fetch_array($result)){

    	 ?>


      <div class="container">

        <div class="section-title">
          <h2>Confirm your Appointment</h2>
        </div>

        <div class="row">

          <div class="col-lg-6">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="assets/img/doctors/doctors-1.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4><?php echo $row['name'] ?></h4>
                <br>
                <span>On <?php echo $_GET['time']; ?></span>
                <p><?php echo $row['Speciality'] ?></p>
              </div>
              
            </div>
          </div>

          <div class="col-lg-6">
          	<form action="sendOTP.php?doctorid=<?php echo $doctorid ?>&time=<?php echo $_GET["time"] ?>&type=1&user_id=<?php echo $_SESSION["user_id"] ?>" method="post" role="form" class="php-email-form">

          			
		            <div class="col-md-8 form-group">
		            	<!-- <h4>Enter your mobile number</h4>
		              <input type="text" name="name" class="form-control" id="name" placeholder="Mobile Number" data-rule="minlen:4" data-msg="Please enter at least 4 chars">
		              <div class="validate"></div>
		              <br>
		              <input type="email" class="form-control" name="email" id="email" placeholder="OTP" data-rule="email" data-msg="Please enter a valid email">
		              <div class="validate"></div>
		              <br> -->
		              <button type="submit" name="login-submit" class="btn btn-success">
                  		Send OTP
                </button>
		           </div>
		           
		        </form>



          </div>

        </div>
        <?php 
        } ?>
      </div>
    </section><!-- End Doctors Section -->