<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
  <title>Donacije</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container" style="background-color:#E8E8E8">
  
  <div class="jumbotron">
    <h1>Donacije i udomljavanje zivotinja</h1>
	<?php

  ?>
  </div>
  
   <div class="navbar navbar-inverse navbar-static-top" role="navigation">
	   <div class="container">
		    <div class="navbar-header">
			     <button type="button" class="navbar-toggle" data-toggle="collapse" date-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
           </button>
		    </div>
    <div class="navbar-collapse collapse">
     <ul class="nav navbar-nav navbar-center">
       <li clas="active"><a href="index.php">Novosti</a></li>
       <li class="dropdown">
         <a href="#" class="dropdown-toggle" data-toggle="dropdown">Tko smo i što radimo<b class="caret"></b></a>
         <ul class="dropdown-menu">
            <li><a href="tkosmo.php">Tko smo?</a></li>
            <li><a href="nacinrada.php">Nacin rada</a></li>
            <li><a href="priUdom.php">Privremeni udomitelji</a></li>
            <li><a href="clanstvo.php" class="dropdown-toggle" data-toggle="dropdown">Članstvo<b class="caret"></b></a>
            <ul class="dropdown-submenu">
            <li><a href="#">Redovno</a></li>
            <li><a href="#">Pridruženo</a></li>
            <li><a href="#">Nominalno</a></li>
            <li><a href="#">Počasno</a></li>
            </ul></li>
            <li><a href="aukcije.php">Aukcije</a></li>
            <li><a href="akcije.php">Akcije</a></li>
         </ul>
       </li>
       <li clas="active"><a href="volontiraj.php">Volontiraj!</a></li>
       <li clas="active"><a href="doniraj.php">Doniraj</a></li>
       <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Udomi <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="macke.php">Mačke</a></li>
            <li><a href="#">Kako udomiti</a></li>
          </ul>
       </li>
       <li><a href="login.php">Udomljene mace</a></li>
       <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Projekti <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="#">Udomljavanje</a></li>
            <li><a href="#">Kumstvo</a></li>
            <li><a href="#">Volontiranje</a></li>
          </ul>
       </li>
       <li><a href="#">Sponzori</a></li>
       <li><a href="kontakt.php">Kontakt</a></li>

       <li><span style="display: block; color: #9d9d9d; padding: 15px 0; line-height: 20px;">Dobrodosao: <?php echo $_SESSION['login_user']; ?></span></li>
       <li><button style="  padding-top:15px;"><a href="login.html">Odjava</a></button></li>
     </ul>
    </div>
	   </div>
   </div>
  
    <div clas="col-md-12">
    <div class="col-md-8" style="margin-left:20px">
    <?php 

    $id = $_SESSION['login_user'];

    $mysqli = new mysqli("localhost", "root", "root", "seminar2");
        if ($mysqli->connect_errno) {
          echo $mysqli->connect_error;
        }
          $query= "SELECT * from korisnici WHERE username='$id'";
          $result=  $mysqli->query($query);
        
        while($row= $result->fetch_assoc()){
           echo '<div class="col-md-10 panel panel-default">';
            echo '<div class="col-md-12">';
            echo '<h3 style="color:blue">Ime:</h3>';
            
            echo '<p>' . $row['ime']  . '</p>';
            echo '<h5 style="color:blue">Prezime</h5>';
            echo '<p>' . $row['prezime'] . '';
            echo '<h5 style="color:blue">Datum rodenja:</h5>';
            echo '<p>Mobitel: ' . $row['datRodenja'] . '';

            
            
          

            echo '</div>';
            echo '</div>';
           }
          
           
            
        
    ?>
   
  </div>
  </div>
   <div class=" nav nav-stacked pull-center col-sm-3 panel panel-default ">
      
      <ul style="list-style-type:none">
       <li><label> <?php echo $_SESSION['login_user']; ?></label></li>
       <ul style="list-style-type:none">
        
          <li><a href="novidogadaj.html">Unos novog dogadaja</a></li>
          <li><a href="#">Moj profil</a></li>
          <li><a href="#">Izmjena dogadaja</a></li>
      </ul>
      
      
      <li><a href="#">Kako udomiti?</a></li>
      <li><a href="#">Novosti</a></li>      
      <li><a href="#">Sponzori</a></li>
      </ul>
     </div>
  

  </div>
 </div>	


</body>
</html>