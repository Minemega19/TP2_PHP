<?php
  session_start();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>TP2 PHP</title>
</head>
<body>
	<h1>Détail de la commande d'un client </h1>
	
    <?php
      $db = mysqli_connect ("localhost","root","");
        mysqli_select_db($db,"client"); 
    ?>
	
	<?php
      if (empty($_POST["ChoixClient"])) { ?>
	    <form action = "#" method = "post">
			<?php $sql = "SELECT NOM_CLIENT, NO_CLIENT FROM CLIENT";
      			 $result = mysqli_query($db,$sql); ?>
		  <select name="ChoixClient">
            <?php
				while($ligne = mysqli_fetch_array($result)){         ?>
					<option value="<?php echo $ligne["NO_CLIENT"] ?>"><?php echo $ligne["NOM_CLIENT"] ?></option>
            <?php } ?>
        </select>
			<input type="submit" value="Ok">
		</form>
	 <?php }
      if (empty($_POST["ChoixCommande"]) && !empty($_POST["ChoixClient"])) { ?>
		<form action = "#" method = "post">
			<p>Nom client : <?php echo $_POST["ChoixClient"] ?></p>
			<?php $sqlcommande = "SELECT NO_COMMANDE , NO_CLIENT FROM COMMANDE";
			$result = mysqli_query($db,$sqlcommande); ?>
			  <select name="ChoixCommande">
				<?php
					while($ligne = mysqli_fetch_array($result)){           ?>
						<option value="<?php echo $ligne["NO_COMMANDE"] ?>"><?php echo $ligne["NO_COMMANDE"] ?></option>
				<?php } ?>
			</select>
			<input type="submit" value="Ok">
		</form>
	 <?php }
	   if (empty($_POST["ChoixArticle"]) && !empty($_POST["ChoixCommande"]) && !empty($_POST["ChoixClient"])) { ?>
		<form action = "#" method = "post">
			<p>Nom client : <?php echo $_POST["ChoixClient"] ?></p>
			<p>Nom article : <?php echo $_POST["ChoixCommande"] ?></p>
			<?php $sqlarticle = "SELECT NO_ARTICLE , LIB_ARTICLE FROM ARTICLE";
			$result = mysqli_query($db,$sqlarticle); ?>
			  <select name="ChoixArticle">
				<?php
					while($ligne = mysqli_fetch_array($result)){           ?>
						<option value="<?php echo $ligne["NO_ARTICLE"] ?>"><?php echo $ligne["LIB_ARTICLE"] ?></option>
				<?php } ?>
			</select>
			<input type="submit" value="Ok">
		</form>
	 <?php } ?>
</body>