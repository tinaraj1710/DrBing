<?php 

include 'db.inc.php';
include 'app.php';
$name = 'Timothy';

$sql1 = "SELECT * FROM medical_history WHERE name = '$name'";
$result1 = mysqli_query($conn, $sql1);
if (!empty($row1 = mysqli_fetch_array($result1))){
	echo $row1['medicalhistory'];
}
 ?>