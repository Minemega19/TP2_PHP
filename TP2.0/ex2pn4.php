<?php
  session_start();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>TP2 PHP</title>
</head>
    <h1>Détail de la commande d'un client </h1>
    <?php
      $db = mysqli_connect ("localhost","root","");
        mysqli_select_db($db,"client"); 
      $sql = "SELECT NO_ARTICLE , LIB_ARTICLE FROM ARTICLE";
      $result = mysqli_query($db,$sql);
	  $ChoixClient6 = $_POST["ChoixClient5"];
	  $_SESSION['IDARTICLE'] = $ChoixClient6;
	  $val = $_SESSION['IDARTICLE'];
    ?>
	<p>Nom client : <?php echo $_SESSION['IDCLIENT'] ?></p>
	<p>N' Commande : <?php echo $_SESSION['IDCOM'] ?></p>
	<p>N' article : <?php echo $_SESSION['IDARTICLE'] ?></p>
	<p>Affichage</p>
<body>