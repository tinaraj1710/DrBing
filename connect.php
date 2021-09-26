<?php
include 'app.php';
$user = $_SESSION['user_id'];
include 'db.inc.php';
 if (isset($_POST['name'])) {
    $name = $_POST['name'];
}

if (isset($_POST['gender'])) {
    $gender = $_POST['gender'];
}

if (isset($_POST['age'])) {
    $age = $_POST['age'];
}
if (isset($_POST['medicalhistory'])) {
    $medicalhistory = $_POST['medicalhistory'];
}

	if($conn->connect_error){
		die("Connection Failed : ". $conn->connect_error);
	} else {
		$stmt = "INSERT INTO medical_history (user_id, name , gender, age, medicalhistory) values('$user', '$name', '$gender', '$age', '$medicalhistory')";
		if(mysqli_query($conn, $stmt)){
		echo '<script type="text/javascript">
    		window.location.href = \'fitbitSuccess.php\';
    		</script>';
    	}
	}
?>