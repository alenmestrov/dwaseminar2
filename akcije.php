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
            <li><a href="aukcije.php">Aukcije</a></li>
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
    $mysqli = new mysqli("localhost", "root", "root", "seminar2");
        if ($mysqli->connect_errno) {
          echo $mysqli->connect_error;
        }
          $query= "SELECT * from akcije";
          $result=  $mysqli->query($query);
          
          while($row= $result->fetch_assoc() ){
            echo '<div class="row">';
            echo '<div class="col-md-10 panel panel-default">';
            echo '<div class="col-md-12">';
            echo '<h3 style="color:blue">' . $row['naslov']  . '</h3>';
           
            echo '</div>';
           


            echo '<div class="col-md-4"><img src=' . $row['slika'] . '  width="150" height="150"></div>';
            
            
            
            $pola = substr("$row[tekst]", 0,250);

            echo '<div class="col-md-8"><p>' . $pola . '...</p>';
           
            echo '<button><a href="detalji.php?id=akcije&nav=' . $row[id] . '">Nastavite čitati</a></button><hr>';
            echo '</div>';
            echo '<div class="col-md-12 pull-right">';
            echo '<button style="float:right"><a href="#">Ostavite komentar</a></button></div>';
            

            echo '</div>';
            echo '</div>';
           
          
           
            }
          
    ?>
   
  </div>
  </div>
   <div class=" nav nav-stacked pull-center col-sm-3 panel panel-default ">
      
      <ul style="list-style-type:none">
      <li><a href="#">Mačke</a></li>
       <ul style="list-style-type:none">
          <li><a href="#">Mačići</a></li>
          <li><a href="#">Mlade Mačke</a></li>
          <li><a href="#">Starije Mačke</a></li>
      </ul>
      
      
      <li><a href="#">Kako udomiti?</a></li>
      <li><a href="#">Novosti</a></li>      
      <li><a href="#">Sponzori</a></li>
      </ul>
     </div>
   <div class="col-sm-3">
      <h3>Column 3</h3>        
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>

  </div>
 </div> 


</body>
</html>