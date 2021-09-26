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
		<h3 class="text-primary">Payment Details</h3>
		<hr style="border-top:1px dotted #ccc;"/>
		<div class="col-md-6">	
		<br /><br />
			<form method="POST" action="pay.php">
				<div class="form-group">
					<label>Card number</label>
					<input type="text" name="username" class="form-control" required="required"/>
				</div>
				<div class="form-group">
					<label>CVV</label>
					<input type="password" name="password" minlength="3" class="form-control" required="required"/>
				</div>
				<div class="form-group">
					<label>Firstname</label>
					<input type="text" name="firstname" class="form-control" required="required"/>
				</div>
				<div class="form-group">
					<label>Lastname</label>
					<input type="text" name="lastname" class="form-control" required="required"/>
				</div>
				<div class="form-group">
					<label>Email</label>
					<input type="email" name="email" class="form-control" required="required"/>
				</div>
				<div class="form-group">
					<button name="pay" class="btn btn-primary btn-block">Pay</button>
				</div>
				<?php
					if(ISSET($_SESSION['status'])){
						if($_SESSION['status'] == "error"){
				?>
							<div class="alert alert-danger"><?php echo $_SESSION['result']?></div>
							
				<?php
						}
	
						unset($_SESSION['result']);
						unset($_SESSION['status']);
					}	
				?>
			</form>
		</div>
	</div>
	</center>
</body>
</html>