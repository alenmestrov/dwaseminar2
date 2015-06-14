<?php
session_start();
if(isset($_SESSION['prolaz'])){
	header('url=login.php');
}
function noviKorisnik(){
	$username=$_POST['username'];
	$password=$_POST['password'];
	$ime=$_POST['ime'];
	$prezime=$_POST['prezime'];
	$mail=$_POST['mail'];
	$datRod=$_POST['datrod'];

$db = new mysqli("localhost", "root", "root", "seminar2") or die("Neuspjelo spajanje na bazu!");
       

          $umetniq= "INSERT INTO korisnici(username,password,razprist,ime,prezime,datRodenja,email) VALUES('$username','$password',2,'$ime','$prezime','$datRod','$mail')";

          $data = mysqli_query($db, $umetniq);
         
          if($data){
          	$_SESSION['prolaz']=1;
          	echo 'Vasa registracija je obavljena.';

          	header('Refresh:1;url=login.html');
          	echo '<a href="login.php">link ako ne redirecta</a>';
          }
          
}

function registracija(){
	$un=$_POST['username'];
	$db =  mysqli_connect("localhost", "root", "root", "seminar2") or die("Neuspjelo spajanje na bazu!");
      
if(!empty($_POST['username'])){
		$result=mysqli_query($db,"SELECT * FROM korisnici WHERE username=''");
		$br = mysqli_num_rows($result);
		
		if($br == 0){
			
			noviKorisnik();
		}else{
			echo "Korisnicko ime je zauzeto molimo unesite drugo.";
			echo "<a href='registracija.html'>Redirectaj tu ako nece</a>";
			header("refresh:2;url=registracija.php");
			
		}

	

}else{
	echo '<h3>niste unijeli potrebne podatke upisite ponovno.';
	header ('Refresh: 2;url=registracija.php');
	echo '<a href="registracija.html">Tu stisni</a>';	
}
}
if($_SERVER['REQUEST_METHOD'] === 'POST'){
if(isset($_POST['submit'])){
	
	registracija();
	
}}
 ?>
<html>
<head>
  <title>Registracija</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>
<div class="row">
<div class="col-md-2 col-md-offset-5">
	<form action="registracija.php" method="POST">
	<label>Username:</label>
	<input id="name" name="username" type="text" >
	<label>Password:</label>
	<input id="password" name="password" type="text">
	<label>E-mail</label>
	<input id="mail" name="mail" type="text">
	<label>Ime:</label>
	<input id="ime" name="ime" type="text">
	<label>Prezime:</label>
	<input id="prezime" name="prezime" type="text">
	<label>Datum rodenja</label>
	<input id="datrod" name="datrod" type="date">
	<input name="submit" type="submit" value="login">
	</form>

</div>

</div>

</body>
</html>
 