<?php

require_once('include/init.php');

if($_SESSION['dozvola'] === 1){
	header('Location: index.php');
}

if($_SERVER['REQUEST_METHOD'] === 'POST'){
	$error='klosar ne radi';
		if(empty($_POST['username']) || empty($_POST['password'])){
			$error="Username or Password is invalid";
			echo $error;
		} else { 
			$username=$_POST['username'];
			$password=hash('sha512', $_POST['password']);
			$query = $db->prepare("SELECT id, ime, username, razprist FROM korisnici WHERE username=?");
			$query->bind_param('s', $username);
			$query->execute();
			$row = array();
			$query->bind_result($row['id'], $row['ime'], $row['username'], $row['razprist']);
			$query->fetch();
			
			if($row['id'] !== 0){
		
	
				$_SESSION['login_user']=$row['ime'];
				$_SESSION['login_id']=$row['username'];
				$_SESSION['razina']=$row['razprist'];	
				$_SESSION['dozvola']=1;
				header('Location: index.php');
			}else{
				$error = "Username or Password is invalid";
				header('Location:login.php');
				echo $error;
			}
		}
}


mysqli_close($db);
?>


<html>
<head>
<title>Login</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>
<div class="row">
<div class="col-md-2 col-md-offset-5">
<form action="login.php" method="POST">
<label>Username:</label>
<input id="name" name="username" type="text" >
<label>Password:</label>
<input id="password" name="password" type="password">
<input name="submit" type="submit" value="login">
<label><a href="registracija.php">Registracija</a></label>
</form>

</div>

</div>

</body>
</html>
