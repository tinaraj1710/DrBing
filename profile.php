<?php
include 'app.php';
$id = $_GET['doctorid'];

$sql = "SELECT * FROM doctors WHERE id = '$id'";
  $result = mysqli_query($conn, $sql);

  while($row = mysqli_fetch_array($result)){

    $id = $row['id'];
    $name = $row['name'];

  ?>

?>

<section id="doctors" class="doctors">
      <div class="container">

        <div class="section-title">
          <h2>Video Consultation</h2>
        </div>

        <div class="row">

          <div class="col-lg-6">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="assets/img/doctors/doctors-1.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4><?php echo $name; ?></h4>
                <span><?php echo $row['Speciality']; ?></span>
                <p><?php echo $row['Area']; ?></p>
                <div class="social">
                  <a href=""><i class="ri-twitter-fill"></i></a>
                  <a href=""><i class="ri-facebook-fill"></i></a>
                  <a href=""><i class="ri-instagram-fill"></i></a>
                  <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="member d-flex align-items-start">
              <div class="member-info">
                <h4>Slots Available</h4>
                <br>
                <?php
                $slots = "SELECT * FROM office_availability WHERE doctor_id = '$id'";
                $results = mysqli_query($conn, $slots);

                while($rows = mysqli_fetch_array($results)){

                  $startTime = $rows['startTime'];
                  if ($rows['isAvailable'] == 1){

                ?>
                <a href="bookOnline.php?doctorid=<?php echo $id; ?>&time=<?php echo $startTime ?>"><button type="submit" name="login-submit" class="btn btn-success" id="book<?php echo $row['id'] ?>">
                  <?php echo $rows['startTime'] ?>
                </button></a>
                
                <?php 
                }
                  }
                 ?>
            </div>
          </div>
        </div>

          <?php 
          } ?>