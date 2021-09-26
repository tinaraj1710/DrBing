<?php
include 'db.inc.php';
include 'app.php';

$user = $_SESSION['user_id'];
$access_token = $_GET['access_token'];
$user_id = $_GET['user_id'];
$output = shell_exec('python new.py ' .$access_token .' ' .$user_id);
$array = explode('+', $output);

$heart = $array[0];
str_replace("'", '"', $heart);
$sleep = $array[1];
$food = $array[2];
$activities = $array[3];
$stmt = $conn->prepare("INSERT INTO `user_details`(`user_id`, `heart`, `sleep`, `food`, `activities`) VALUES (?, ?, ?, ?, ?)");
$stmt->bind_param("issss", $user, $heart, $sleep, $food, $activities);

$stmt->execute();

echo '<script type="text/javascript">
    		window.location.href = \'fitbitSuccess.php\';
    		</script>';
?>