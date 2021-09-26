<?php
	include_once "db.inc.php";
	include 'app.php';
	$user_id = $_SESSION['user_id'];
    if (isset($_GET['page_no'])) {
        $page_no = (int)$_GET['page_no'];
    } 
    else {
        $page_no = 1;
    } 

    $total_records_per_page = 3;
    $offset = ($page_no-1) * $total_records_per_page;
    $previous_page = $page_no - 1;
    $next_page = $page_no + 1;
    $adjacents = "2";
    $result_count = mysqli_query($conn, "SELECT COUNT(*) As total_records FROM appointments WHERE patient_id='$user_id'");
    $total_records = mysqli_fetch_array($result_count);
    $total_records = $total_records['total_records'];
    $total_no_of_pages = ceil($total_records / $total_records_per_page);
    $second_last = $total_no_of_pages - 1;

?>

<title>Your Appointments</title>
        
    <section id="doctors" class="doctors">
      <div class="container">
        <?php 

            $sql1 = "SELECT * FROM appointments WHERE patient_id = '$user_id'";
            $result1 = mysqli_query($conn, $sql1);
            if (!empty($row1 = mysqli_fetch_array($result1))){
    //                   $sql = "SELECT * FROM restaurants WHERE id= '$restaurant_id'";
                    // $result = mysqli_query($conn, $sql);
                    // $row = mysqli_fetch_array($result);

        ?>

        <div class="section-title">
          <h2>Your Appointments</h2>
        </div>
        <?php 
        $result1 = mysqli_query($conn, $sql1);
                while ($row1 = mysqli_fetch_array($result1)) { 
        ?>

          <div class="col-lg-6">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="assets/img/doctors/doctors-1.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4><?php echo $row1['DoctorName']; ?></h4>
                <span><?php echo $row1['department']; ?></span>
                <p><?php echo $row1['slot_date']; ?></p>
                <p><?php echo $row1['slot_time']; ?></p>

                <div class="social">
                  <a href=""><i class="ri-twitter-fill"></i></a>
                  <a href=""><i class="ri-facebook-fill"></i></a>
                  <a href=""><i class="ri-instagram-fill"></i></a>
                  <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                </div>
                <?php 
                    if ($row1['Type']==1){
                 ?>
                <a href="http://localhost:8080/Dr.Bing/video.php"><button type="submit" name="login-submit" class="btn btn-outline-info btn-sm mt-4">
                  Join Video Call
                </button></a>

                <?php } ?>
                
              </div>
            </div>
          </div>
<?php 
    }
}


 ?>