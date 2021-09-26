<?php
	use PHPMailer\PHPMailer\PHPMailer;
	use PHPMailer\PHPMailer\Exception;

	include 'app.php';
	
	require_once 'db.inc.php';
	
	// if(isset($_SESSION['user_id'])){
		$id = $_GET['user_id'];
		$row = mysqli_fetch_array(mysqli_query($conn, "SELECT * FROM users WHERE id = '$id'"));
		$email = $row['email'];
		$name = $row['name'];
		$OTP = rand(12345,99999);
		$doctorid = $_GET['doctorid'];
		$type = $_GET['type'];
		$time = $_GET['time'];
		
		// mysqli_query($conn, "INSERT INTO `user` VALUES('', '$username', '$password', '$firstname', '$lastname', '$email', '')") or die(mysqli_error());
		$message = "Hello $name! <br>"
        . "Your OTP is $OTP.<br>"
        ."It will remain validfor 5 minutes.<br>";
		
		//Load composer's autoloader
		require 'vendor/autoload.php';
 
		$mail = new PHPMailer(true);                            
   
		try {
			//Server settings
			$mail->isSMTP();                                     
			$mail->Host = 'smtp.gmail.com';                      
			$mail->SMTPAuth = true;                             
			// $mail->Username = '2018.khushi.zawar@ves.ac.in';     
			// $mail->Password = '@sitafal64';     
			$mail->Username = 'tpforfun5@gmail.com'; 
			$mail->Password = 'watermelonSugar!';          
			$mail->SMTPOptions = array(
				'ssl' => array(
				'verify_peer' => false,
				'verify_peer_name' => false,
				'allow_self_signed' => true
				)
			);                         
			$mail->SMTPSecure = 'ssl';                           
			$mail->Port = 465; 
			//Send Email
			$mail->setFrom('tpforfun5@gmail.com');
	
			//Recipients
			$mail->addAddress($email);              
			$mail->addReplyTo('tpforfun5@gmail.com');
	
			//Content
			$mail->isHTML(true);                                  
			$mail->Subject = "Account registration confirmation";
			$mail->Body    = $message;
	
			$mail->send();

			$_SESSION['otp'] = $OTP;
?>
<meta http-equiv="refresh" content="0; URL=http://localhost:8080/Dr.Bing/verifyOTP.php?doctorid=<?php echo $doctorid ?>&time=<?php echo $_GET["time"] ?>&type=1" />

<?php

	
			
		} catch (Exception $e) {
			echo $e;
			$_SESSION['result'] = 'Message could not be sent. Mailer Error: '.$mail->ErrorInfo;
			$_SESSION['status'] = 'error';
		}

	
	
?>