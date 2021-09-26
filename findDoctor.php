<?php
include 'app.php';
?>

<!DOCTYPE HTML>
<html>
<head>

<title>
    <?php 
        if(!isset($_SESSION['user'])){
            echo 'Home';
        }
        else{
            echo $_SESSION["user"].'\'s Home';
        }
        
    ?>
</title>

</head>
<body>

  <?php

  $sql = "SELECT * FROM doctors";
  $result = mysqli_query($conn, $sql);

  while($row = mysqli_fetch_array($result)){

    $id = $row['id'];
    $name = $row['name'];

  ?>

<section id="doctors" class="doctors">
  <script>
    $(document).ready(function(){
      $("#bookDetails<?php echo $row['id'] ?>").hide();
      $("#slots<?php echo $row['id'] ?>").hide();
      $("#book<?php echo $row['id'] ?>").click(function(){
        $("#bookDetails<?php echo $row['id'] ?>").toggle();
      });
      $("#buttonTime").click(function(){
        $("#slots<?php echo $row['id'] ?>").toggle();
      });
    });
</script>
      <div class="container">

        <div class="row">
          <?php
              $doctorid = $row['id']; 

        $office = "SELECT * FROM office WHERE doctor_id = '$id' ";
        $officeResult = mysqli_query($conn, $office);
        $details = mysqli_fetch_array($officeResult);
           ?>
          <div class="col-lg-12">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="assets/img/doctors/doctors-1.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4><?php echo $row['name'] ?></h4>
                <span><?php echo $row['Speciality'] ?></span>
                <p><?php echo $row['Area'] ?><br>Explicabo voluptatem mollitia et repellat qui dolorum quasi</p>
                <p>₹<?php if (!empty($details)){echo $details['first_consultation_fee'];}?> Consultation fee at clinic</p>
                <div class="social">
                  <a href=""><i class="ri-twitter-fill"></i></a>
                  <a href=""><i class="ri-facebook-fill"></i></a>
                  <a href=""><i class="ri-instagram-fill"></i></a>
                  <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                </div>
                <br>
                <button type="submit" name="login-submit" class="btn btn-info" id="book<?php echo $row['id'] ?>">
                  Book Appointment
                </button>
                <a href="profile.php?doctorid=<?php echo $row['id'] ?>">
                  <button type="submit" name="login-submit" class="btn btn-success">
                                    Video Consultation
                                </button>
                 </a>
              
              </div>
            
            </div>
          </div>

            </div>

          <div class="col-lg-6 mt-4" id="bookDetails<?php echo $row['id'] ?>">
            <div class="member d-flex align-items-start">
              <div class="member-info">
                <h4>Slots Available</h4>
                <button type="submit" name="login-submit" class="btn btn-outline-success btn-sm mt-4" id="buttonTime">
                                    Today
                                    <?php $day = date('w'); ?>

                                </button>
                <button type="submit" name="login-submit" class="btn btn-outline-success btn-sm ml-2 mt-4" id="buttonTime">
                                    Tomorrow
                                    <?php $day = date('w')+1; ?>
                                </button>
                <br>
                <?php
                $slots = "SELECT * FROM office_availability WHERE doctor_id = '$doctorid' AND dayOfWeek = '$day'";
                $results = mysqli_query($conn, $slots);

                while($rows = mysqli_fetch_array($results)){

                  $startTime = $rows['startTime'];
                  if ($rows['isAvailable'] == 1){

                ?>
                <a href="bookOffline.php?doctorid=<?php echo $doctorid; ?>&time=<?php echo $startTime ?>"><button type="submit" name="login-submit" class="btn btn-outline-info btn-sm mt-4" id="slots<?php echo $row['id'] ?>">
                  <?php echo $rows['startTime'] ?>
                </button></a>
                
                <?php 
                }
                  }
                 ?>
              </div>
            </div>
          </div>

          <!-- <div class="col-lg-6 mt-4">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="assets/img/doctors/doctors-4.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Amanda Jepson</h4>
                <span>Neurosurgeon</span>
                <p>Dolorum tempora officiis odit laborum officiis et et accusamus</p>
                <div class="social">
                  <a href=""><i class="ri-twitter-fill"></i></a>
                  <a href=""><i class="ri-facebook-fill"></i></a>
                  <a href=""><i class="ri-instagram-fill"></i></a>
                  <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                </div>
              </div>
            </div>
          </div> -->

        </div>

        <?php
      }
        ?>

      </div>
    </section><!-- End Doctors Section -->