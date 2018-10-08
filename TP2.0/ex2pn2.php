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
      $sql = "SELECT NO_COMMANDE,NO_CLIENT FROM COMMANDE";
      $result = mysqli_query($db,$sql);
	  $ChoixClient2 = $_POST["ChoixClient"];
	  $_SESSION['IDCLIENT'] = $ChoixClient2;
	  $val = $_SESSION['IDCLIENT'];
    ?>
	<p>Nom client : <?php echo $val ?></p>
    <form method = "post" action="ex2pn3.php">
        <select name="ChoixClient3">
           <?php
            while($ligne = mysqli_fetch_array($result)){           ?>
                <option value="<?php echo $ligne["NO_COMMANDE"] ?>"><?php echo $ligne["NO_COMMANDE"] ?>	</option>
            <?php } 
		   ?>

        </select>
        <input type="submit" value="Ok">
</form>
<body>