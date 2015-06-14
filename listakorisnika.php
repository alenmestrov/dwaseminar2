<?php
require_once('include/init.php');

if($_SERVER['REQUEST_METHOD'] == "POST"){
  if(isset($_POST['username'])){
  $username=$_POST['username'];
  $password=$_POST['password'];
  $imeK=$_POST['imekorisnika'];
  $prezimekorisnika=$_POST['prezimekorisnika'];
  $datumrod=$_POST['datumrod'];
  $mailK=$_POST['mailkorisnika'];
  $id=$_GET['nav'];

  
  
   $umetniq= "UPDATE korisnici SET username='$username' ,password = '$password',ime='$imeK',prezime='$prezimekorisnika',datRodenja='$datumrod',email='$mailK' WHERE id='$id'";

          $data = mysqli_query($db, $umetniq);
         
          if($data){
           
            echo "Vasa promijena je napravljenja.";

         //   header('Refresh:1;url=listakorisnika.php');
           
          }
  
}}

?>
<!DOCTYPE html>
<html>
<head>
  <title>Donacije</title>
  <meta charset="utf-8">
  

  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  
  <script type="text/javascript" charset="utf8" src="//code.jquery.com/jquery-1.10.2.min.js"></script>
  <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.7/css/jquery.dataTables.css">
 
 <script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.7/js/jquery.dataTables.js"></script>

  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

  <script >
  $(document).ready(function(){
    $('#tablica').dataTable();
});
  </script>
</head>
<body>
<script> $ = jQuery; </script>

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
       </ul>
    </div>
     </div>
   </div>
  
    <div clas="col-md-12">
    <div class="col-md-8" style="margin-left:20px">
    <table id="tablica">
   <thead>
    <tr>
      <th>ID korisnika</th>
      <th>Username korisnika</th>
      <th>Password korisnika</th>
      <th>Razina pristupa</th>
      <th>Ime korisnika</th>
      <th>Prezime korisnika</th>
      <th>Datum rodenja</th>
      <th>E-mail</th>
    </tr>
    </thead>
    <tbody>
    <?php 

      $query = "SELECT * FROM korisnici";
      $result = $db->query($query);
      while($row = $result -> fetch_assoc()){
        echo '<tr><td>' . $row['id'] .'</td>';
        echo '<td>' . $row['username'] .'</td>';
        echo '<td>' . $row['password'] .'</td>';
        if($row['razprist'] === "1"){
          echo '<td> Admin </td>';
        }else{
          echo '<td> Korisnik </td>';
        }
       
        echo '<td>' . $row['ime'] .'</td>';
        echo '<td>' . $row['prezime'] .'</td>';
        echo '<td>' . $row['datRodenja'] .'</td>';
        echo '<td>' . $row['email'] .'</td></tr>';


      }
      
      
     ?>
    </tbody>
   </table>
   <?php
   if(isset($_GET['id'])){
    echo '<div class="col-md-12">';
    if($_GET['id'] == 1){
  echo '<form action="listakorisnika.php?id=1" method="POST">';
  echo ' <label>Upisi id osobe koju zelis izmjeniti</label>';
  echo '<input type="text" name="idosobe" />';
  echo '<input name="submit" type="submit" value="upisi">';
  echo '</form>';
}
if($_GET['id'] == 2){
  echo '<form action="listakorisnika.php?id=2" method="POST">';
  echo '<label>Upisi id korisnika kojeg zelis izbrisati:</label>';
  echo '<input type="text" name="iddelete" />';
  echo '<input type="submit" name="submit" value="izbrisi" />';
  echo '</form>';

if(isset($_POST['iddelete'])){
  $idd=$_POST['iddelete'];
   $umetniqq= "DELETE FROM korisnici WHERE id='$idd'";

          $data2 = mysqli_query($db, $umetniqq);
         
          if($data2){
           
            echo "Vasa promijena je napravljenja.";

         //   header('Refresh:1;url=listakorisnika.php');
           
          }
}
}
if($_GET['id'] == 3){
  echo '<form action="listakorisnika.php?id=3" method="POST">';
  echo '<label> Upisi id korisnika kojem zelis promijeniti razinu pristupa:</label>';
  echo '<input type="text" name="razpristupa" />';
  echo '<input type="submit" name="submit" value="Promijeni"/>';
}
if(isset($_POST['razpristupa'])){
  $idraz=$_POST['razpristupa'];

 $pp = $db->prepare("SELECT razprist FROM korisnici WHERE id='$idraz'");
      $pp->execute();
      $roww = array();
      $pp->bind_result($roww['razprist']);
      $pp->fetch();
      

      if($roww['razprist'] == "1"){
      
$sql = "UPDATE korisnici SET razprist='1' WHERE id='$idraz'";

if ($db->query($sql) === TRUE) {
    echo "Record updated successfully";
} else {
    echo "Error updating record: " . $db->error;
}
      }else{
        $promijenii="UPDATE korisnici SET razprist = 1 WHERE id='$idraz'";

          $data2 = mysqli_query($db, $promijenii);
         
          if($data2){
           
            echo "Vasa promijena je napravljenja.";

         //   header('Refresh:1;url=listakorisnika.php');
           
          }else{
            echo 'nis nije napravljeno';
          }
      }
 


}
if(isset($_POST['idosobe'])){
 if($_GET['id'] == 1){
   $idosobe=$_POST['idosobe'];
   $q2=$db -> prepare("SELECT id,ime,username,razprist,prezime,password,datRodenja,email FROM korisnici WHERE id=? ");
   $q2->bind_param('s', $idosobe);
  
   $q2->execute();
   $row2 = array();
   $q2->bind_result($row2['id'], $row2['ime'], $row2['username'], $row2['razprist'], $row2['prezime'],$row2['password'],$row2['godrod'],$row2['email']);
   $q2->fetch();
     

    
  
   
    echo '<form action="listakorisnika.php?id='. $_GET['id'].'&nav=' .$_POST['idosobe'].'" method="POST">';
    echo '<label>Username:</label>';
    echo '<input type="text" name="username" placeholder="'. $row2['username'].'" ></input></br>';
    echo '<label>Password:</label>';
    echo '<input type="text" name="password" placeholder="' . $row2['password'] . '"/></br>';
    echo '<label>Ime korisnika:</label>';
    echo '<input type="text" name="imekorisnika" placeholder="' . $row2['ime'].'"/></br>';
    echo '<label>Prezime korisnika:</label>';
    echo '<input type="text" name="prezimekorisnika" placeholder="'. $row2['prezime'].'"></input></br>';
    echo '<label>Datum rodenja korisnika:</label>';
    echo '<input type="date" name="datumrod" placeholder="'. $row2['godrod'].'"></input></br>';
    echo '<label>E-mail korisnika:</label>';
    echo '<input type="text" name="mailkorisnika" placeholder="'. $row2['email'].'"></input></br>';
    echo '<input type="submit" name="submit" value="upisi promijene"/>';
    echo '</form>';

  }

}
  echo '</div>';
}


?>
   <div class="col-md-12">
   <a href="listakorisnika.php?id=1">Izmjeni korisnika</a></br>
   <a href="listakorisnika.php?id=2">Pobrisi korisnika</a></br>
   <a href="listakorisnika.php?id=3">Promijeni razinu pristupa</a></br>
   </div>
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
