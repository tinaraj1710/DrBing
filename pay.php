<?php
	use PHPMailer\PHPMailer\PHPMailer;
	use PHPMailer\PHPMailer\Exception;
	
	
	require_once 'db.inc.php';
	session_start();
	
	if(ISSET($_POST['pay'])){
		$username = $_POST['username'];
		$password = $_POST['password'];
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];
		$email = $_POST['email'];
		
		// mysqli_query($conn, "INSERT INTO `user` VALUES('', '$username', '$password', '$firstname', '$lastname', '$email', '')") or die(mysqli_error());
		
		$link = "http://localhost:8080/Dr.Bing/verified.php?email=".$email."";
		$message = "Hello $firstname $lastname! <br>"
        . "Please click the link below to confirm your email and complete the payment process.<br>"
        . "You payment will automatically get processed after the verification.<br><br>"            
        . "Please click below<br>"
        . "<a href='$link'>Click Here!</a>";
		
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
			$mail->setFrom('2018.salonee.velonde@ves.ac.in');
	
			//Recipients
			$mail->addAddress($email);              
			$mail->addReplyTo('2018.salonee.velonde@ves.ac.in');
	
			//Content
			$mail->isHTML(true);                                  
			$mail->Subject = "Account registration confirmation";
			$mail->Body    = $message;
	
			$mail->send();
	
			header("location:verification.php?firstname=".$firstname."&lastname=".$lastname."&email=".$email."");
			
		} catch (Exception $e) {
			$_SESSION['result'] = 'Message could not be sent. Mailer Error: '.$mail->ErrorInfo;
			$_SESSION['status'] = 'error';
		}

	}
	
?>