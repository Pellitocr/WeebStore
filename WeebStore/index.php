<!doctype html>
<?php
	include("dbconnect.php")
?>
<html>
<head>
<title>Welcome to Weeb Store</title>

<link href="styles.css" rel="stylesheet" type="text/css"/>
</head>

<body>
<div class="container">
<?php
	include("header.php");
if(!isset($_GET['page'])) {
	?><div class="banner"><img src="images/animebanner.jpg" alt="Weeb store" width="999"/></div>
	<?php
}

?>

<div class="maincontent">
<?php
	if(!isset($_GET['page'])) {
		include("home.php");
	} else {
		$page=$_GET['page'];
		include("$page.php");
	}
?>
 </div>
<?php
	include("seccontent.php");
?>

<div class="footer"></div>
</div>
</body>
</html>
