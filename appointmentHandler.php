<?php 

include 'app.php';
date_default_timezone_set('Asia/Kolkata');


$doctorid = $_GET['doctorid'];
$time = $_GET['time'];
$type = $_GET['type'];
$name = $_SESSION['user'];
$patient_id = $_SESSION['user_id'];
$sql = "SELECT * FROM doctors WHERE id = '$doctorid'";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($result);
$dname = $row['name'];
$dept = $row['Speciality'];

$user = mysqli_fetch_array(mysqli_query($conn, "SELECT * FROM users where name = '$name'"));
$email = $user['email'];
$phone = $user['phone'];

$insert = "INSERT INTO appointments(patient_id, PatientName, email, phone, DoctorName, department, type, doctor_id) VALUES ('$patient_id', '$name', '$email', '$phone', '$dname','$dept', '$type', '$doctorid')";

if(mysqli_query($conn, $insert)){

?>
<meta http-equiv="refresh" content="0; URL=http://localhost:8080/Dr.Bing/success.php" />

<?php	
}
else{
	echo mysqli_error($conn);
}



 ?>