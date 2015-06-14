<?php
require_once('include/init.php');

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
  <style>
	.second {
		background-color: #E6E3DA !important;
	}
  </style>
  <script>
	$(document).ready(function(){
		$('#objavi-komentar').click(function(e){
			var tekst = $('#tekst-komentara').val();
			var dogadaj_id = <?php echo intval($_GET['nav']); ?>;
			var tip_dogadaja = '<?php echo $_GET['id']; ?>';
			$.ajax({
				type: "POST",
				url: 'objavi_komentar.php',
				data: {
					dogadaj_id: dogadaj_id,
					tip_dogadaja: tip_dogadaja,
					tekst: tekst
				},
				success: function(e){
					window.location.reload();
				}
			});
		});
		});
  </script>
</head>
<body>

<div class="container" style="background-color:#E8E8E8">
  
  <div class="jumbotron">
    <h1>Donacije i udomljavanje zivotinja</h1>
	
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
            <li><a href="clanstvo.php">Članstvo</a></li>
            <li><a href="#">Aukcije</a></li>
            <li><a href="#">Akcije</a></li>
         </ul>
       </li>
       <li clas="active"><a href="volontiraj.php">Volontiraj!</a></li>
       <li clas="active"><a href="#">Doniraj</a></li>
       <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Udomi <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="#">Mačke</a></li>
            <li><a href="#">Kako udomiti</a></li>
          </ul>
       </li>
       <li><a href="#">Udomljene mace</a></li>
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
     </ul>
    </div>
	   </div>
   </div>
  
    <div clas="col-md-12">
    <div class="col-md-8" style="margin-left:20px">
    <?php

			 $dopusteno = array('volontiraj', 'detalji', 'akcije', 'onama', 'dogadaji', 'privremeniudomitelji', 'volontirajidoniraj');
			 if(!in_array($_GET['id'], $dopusteno, true)){
				die("hack try");
			 }

	       $_GET['nav'] = intval($_GET['nav']);

	 // komentari
	 $komentari = $db->prepare('SELECT tekst FROM komentari WHERE dogadaj_id = ? AND tip_dogadaja = ?');
	 $komentari->bind_param('is', $_GET['nav'], $_GET['id']);
	 $komentari->execute();
    $row = array();
	 $komentari->bind_result($row['tekst']);


	$komentariHtml = '<div class="row">';

	$i = 0;
	while($komentari->fetch()){
		$komentariHtml .= '<div style="background-color: white; box-shadow: 2px 2px 2px gray; margin-bottom: 10px; height: 70px; padding: 10px;"';
		if($i % 2 !== 0){
			$komentariHtml .= ' class="second col-md-12">';
		}else{
			$komentariHtml .= ' class="col-md-12">';
		}
		$komentariHtml .= $row['tekst'];
		$komentariHtml .= '</div>';

		++$i;
	}

	$komentariHtml .= '</div>';
	
	$komentariHtml .= <<<EOF
	<div>Ostavite komentar:</div>
		<textarea style="height: 120px; width: 100%;" id="tekst-komentara"></textarea>
		<a class="btn btn-default" id="objavi-komentar">Objavi komentar</a>
EOF;

	 // end - komentari

    $mysqli = new mysqli("localhost", "root", "root", "seminar2");
        if ($mysqli->connect_errno) {
          echo $mysqli->connect_error;
        }

          $query= "SELECT * from $_GET[id] WHERE id = $_GET[nav]";
          $result=  $mysqli->query($query);

			 $row = $result->fetch_assoc();
            echo '<div class="row">';
            echo '<div class="col-md-10 panel panel-default">';
            echo '<div class="col-md-12">';
            echo '<h3 style="color:blue">' . $row['naslov']  . '</h3>';
            echo '</div>';
            if($_GET['id']== "akcije" || $_GET['id'] == "dogadaji" || $_GET['id'] == "onama" || $_GET['id'] == "privremeniudomitelji" || $_GET['id'] == "volontirajidoniraj"){
              echo '<div class="col-md-4"><img src=' . $row['slika'] . '  width="200" height="200"></div>';
              echo '<div class="col-md-8 pull-right"><p>' . $row['tekst'] . '</p>';
              echo '</div>';
            }
            else{
               echo '<div class="col-md-12"><p>' . $row['tekst'] . '</p>';
            echo '</div>';
            }
           
            echo '<div class="col-md-12 pull-right">';
            echo '<button><a href="index.php">Natrag</a></button>';
            echo '<button style="float:right"><a href="#">Ostavite komentar</a></button></div>';
            echo '</div>';
				echo $komentariHtml;
            echo '</div>';
    ?>
   
  </div>
  </div>
   <div class=" nav nav-stacked pull-center col-sm-3 panel panel-default ">
      
      <ul style="list-style-type:none">
       <li><label> <?php 
       echo $_SESSION['login_user']; 
       if($_SESSION['razina'] === 1){
        echo '(admin)';
      }else{
          echo '(korisnik)';
        }
        ?></label></li>
       <ul style="list-style-type:none">
        <?php
         if(($_SESSION['razina'] === 1)): ?>
          <li><a href="novidogadaj.html">Unos novog dogadaja</a></li>
          <li><a href="#">Izmjena dogadaja</a></li>
          <li><a href="#">Brisanje dogadaja</a></li>
          <li><a href="listakorisnika.php">Lista korisnika</a></li>

        <?php endif; ?>
        
        <li><a href="mojprofil.php">Moj profil</a></li>
          <li><a href="logout.php">Odjava</a></li>
      </ul>
      
      
     
      </ul>
     </div>

  </div>
 </div>	


</body>
</html>
