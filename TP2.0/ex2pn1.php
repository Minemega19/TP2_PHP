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
      $sql = "SELECT NOM_CLIENT, NO_CLIENT FROM CLIENT";
      $result = mysqli_query($db,$sql);
	  $_SESSION['IDCLI']
    
    ?>
    <form method = "post" action="ex2pn2.php">
        <select name="ChoixClient">
            
           <?php
            while($ligne = mysqli_fetch_array($result)){           ?>
                <option value="<?php echo $ligne["NOM_CLIENT"] ?>"><?php echo $ligne["NOM_CLIENT"] ?></option>
            <?php } ?>

        </select>
        <input type="submit" value="Ok">
</form>
<body>