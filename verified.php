<?php 
include 'app.php';
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1"/>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
	</head>
<body>
	<center>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
		</div>
	</nav>
	<div class="col-md-3"></div>
	<div class="col-md-6 well">
		<h3 class="text-primary">Payments Details</h3>
		<hr style="border-top:1px dotted #ccc;"/>
		<div class="col-md-2"></div>
		<div class="col-md-8">	
			<?php
				if(ISSET($_REQUEST['email'])){
					$email = $_REQUEST['email'];
			?>
				<center><h4>The email that you provided is now verified.</h4></center>
				
				<h5>Your payment is successful.</h5>
				
				<h5>Voila!<a href="index.php?email=<?php echo $email?>"> Click Here</a></h5>
				
				<h5>Thank You!!</h5>
				
			<?php
				
				}
			?>
		</div>
	</div>
	</center>
</body>
</html>