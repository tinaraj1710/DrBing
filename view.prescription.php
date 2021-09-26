<?php
	include_once "db.inc.php";
	include 'app.php';
	$user_id = $_SESSION['user_id'];
  $user_name = $_SESSION['user'];
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
    $result_count = mysqli_query($conn, "SELECT COUNT(*) As total_records FROM prescriptions WHERE pname='$user_name'");
    $total_records = mysqli_fetch_array($result_count);
    $total_records = $total_records['total_records'];
    $total_no_of_pages = ceil($total_records / $total_records_per_page);
    $second_last = $total_no_of_pages - 1;

?>

<title>Your Appointments</title>
        
    <section id="doctors" class="doctors">
      <div class="container">
        <?php 

            $sql1 = "SELECT * FROM prescriptions WHERE pname = '$user_name'";
            $result1 = mysqli_query($conn, $sql1);
            if (!empty($row1 = mysqli_fetch_array($result1))){
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
              <div class="member-info">
                <h4>Dr. <?php echo $row1['dname']; ?></h4>
                <span><?php echo $row1['prescription']; ?></span>
              </div>
            </div>
          </div>
<?php 
    }
}


 ?>