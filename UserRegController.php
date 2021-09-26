<?php
include_once 'db.inc.php';
echo 'hiout';

if (isset($_POST['registersub'])){
	echo 'hi';

	$name = mysqli_real_escape_string($conn, $_POST['name']);
	$email = mysqli_real_escape_string($conn, $_POST['email']);
	$phone = mysqli_real_escape_string($conn, $_POST['phone']);
	$password = mysqli_real_escape_string($conn, $_POST['pwd']);
	$conPassword = mysqli_real_escape_string($conn, $_POST['cpwd']);


	if (empty($name) || empty($email) || empty($phone) || empty($password) || empty($conPassword)){
		header("Location: user.register.php?error=emptyFields&name=".$name."&email=".$email."&phone=".$phone);
		exit();
	}
	else if(!preg_match("/^[a-zA-Z\s]*$/", $name) && !filter_var($email, FILTER_VALIDATE_EMAIL) && !preg_match("/^[0-9]{10}$/", $phone)){
		header("Location: user.register.php?error=invalidnameemailphone");
		exit();
	}
	else if (!preg_match("/^[a-zA-Z\s]*$/", $name)){
		header("Location: user.register.php?error=invalidname&email=".$email."&phone=".$phone);
		exit();
	}
	else if (!filter_var($email, FILTER_VALIDATE_EMAIL)){
		header("Location: user.register.php?error=invalidemail&name=".$name."&phone=".$phone);
		exit();
	}
	else if (!preg_match("/^[0-9]{10}$/", $phone)){
		header("Location: user.register.php?error=invalidphone&name=".$name."&email=".$email);
		exit();
	}
	else if($password !== $conPassword){
		header("Location: user.register.php?error=passwordCheck&name=".$name."&email=".$email."&phone=".$phone);
		exit();
	}
	else{

		$sql = "SELECT email FROM users WHERE email=?";
		$stmt = mysqli_stmt_init($conn);
		if(!mysqli_stmt_prepare($stmt, $sql)){
			header("Location: user.register.php?error=sqlerror");
			exit();
		}
		else{
			mysqli_stmt_bind_param($stmt, "s", $email);
			mysqli_stmt_execute($stmt);
			mysqli_stmt_store_result($stmt);
			$resultcheck = mysqli_stmt_num_rows($stmt);
			if($resultcheck>0){
				header("Location: user.register.php?error=emailTaken&name".$name."&phone".$phone);
				exit();
			}
			else{

				$encryptedPassword = password_hash($password, PASSWORD_DEFAULT);
				$result = mysqli_query($conn, "SELECT CURRENT_TIMESTAMP");
				while ($row = mysqli_fetch_array($result)){
				    $timestamp = $row['CURRENT_TIMESTAMP'];
				}

				// Attempt insert query execution
				$sql = "INSERT INTO users (name, email, phone, password, created_at, updated_at) VALUES ('$name', '$email', '$phone', '$encryptedPassword', '$timestamp', '$timestamp')";

				if(mysqli_query($conn, $sql)){
				    header("Location: login.php?signup=success");
				}
						
			}

		}
	}
}

// $name = mysqli_real_escape_string($conn, $_POST['name']);
// $email = mysqli_real_escape_string($conn, $_POST['email']);
// $phone = mysqli_real_escape_string($conn, $_POST['phone']);
// $password = mysqli_real_escape_string($conn, $_POST['pwd']);
// $conPassword = mysqli_real_escape_string($conn, $_POST['cpwd']);
// $encryptedPassword = password_hash($password, PASSWORD_DEFAULT);
// $result = mysqli_query($conn, "SELECT CURRENT_TIMESTAMP");
// while ($row = mysqli_fetch_array($result)){
//     $timestamp = $row['CURRENT_TIMESTAMP'];
// }

// // Attempt insert query execution
// $sql = "INSERT INTO users (name, email, phone, password, created_at, updated_at) VALUES ('$name', '$email', '$phone', '$encryptedPassword', '$timestamp', '$timestamp')";

// if(mysqli_query($conn, $sql)){
//     header("Location: login.php");
// }

?>