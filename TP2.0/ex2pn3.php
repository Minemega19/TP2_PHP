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
	  $ChoixClient4 = $_POST["ChoixClient3"];
	  $_SESSION['IDCOM'] = $ChoixClient4;
	  $val = $_SESSION['IDCOM'];
    ?>
	<p>Nom client : <?php echo $_SESSION['IDCLIENT'] ?></p>
	<p>N' Commande : <?php echo $_SESSION['IDCOM'] ?></p>
    <form method = "post" action="ex2pn4.php">
        <select name="ChoixClient5">
           <?php
            while($ligne = mysqli_fetch_array($result)){           ?>
                <option value="<?php echo $ligne["NO_ARTICLE"] ?>"><?php echo $ligne["NO_ARTICLE"] ?></option>
            <?php } ?>

        </select>
        <input type="submit" value="Ok">
</form>
<body>