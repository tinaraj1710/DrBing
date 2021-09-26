<?php
	use PHPMailer\PHPMailer\PHPMailer;
	use PHPMailer\PHPMailer\Exception;
	
	include 'app.php';
	require_once 'db.inc.php';
	
	if(isset($_SESSION['user_id'])){
		$doctorid = $_GET['doctorid'];
		$id = $_SESSION['user_id'];
		$row = mysqli_fetch_array(mysqli_query($conn, "SELECT * FROM users WHERE id = '$id'"));
		$email = $row['email'];
		$name = $row['name'];
		$doc = mysqli_fetch_array(mysqli_query($conn, "SELECT * FROM doctors WHERE id = '$doctorid'"));
		$demail = $row['email'];
		
		$link = "http://localhost:8080/Dr.Bing/video.php";
		$message = "Hello $name! <br>"
        . "Please click the link below to join your online doctor appointment.<br>"
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
			$mail->Password = 'salonee1';          
			$mail->SMTPOptions = array(
				'ssl' => array(
				'verify_peer' => false,
				'verify_peer_name' => false,
				'allow_self_signed' => true
				)
			);                         
			$mail->SMTPSecure = 'ssl';                           
			$mail->Port = 465;                                   
			echo 'sending';
			//Send Email
			$mail->setFrom('tpforfun5@gmail.com');
	
			//Recipients
			$mail->addAddress($email);   
			$mail->addAddress($demail);              
			$mail->addReplyTo('tpforfun5@gmail.com');
	
			//Content
			$mail->isHTML(true);                                  
			$mail->Subject = "Link for video consultation";
			$mail->Body    = $message;
	
			$mail->send();
	
			echo '
				<script type="text/javascript">
	    		window.location.href = \'index.php\';
	    		</script>

				';
			
		} catch (Exception $e) {
			echo $e;
			$_SESSION['result'] = 'Message could not be sent. Mailer Error: '.$mail->ErrorInfo;
			$_SESSION['status'] = 'error';
		}

	}
	
?>