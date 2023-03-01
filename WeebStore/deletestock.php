<?php
// deletestockselect.php
session_start();

if(!isset($_SESSION['admin'])) {
	header("Location:admin.php");	
}

include("dbconnect.php");

$delete_sql="DELETE FROM stock WHERE stockID=".$_SESSION['deletestock'];
$delete_query=mysqli_query($db, $delete_sql);

unset($_SESSION['deletestock']);
?>

<p>Stock item deleted</p>
<p><a href="index.php?page=admin">Back to admin panel</a></p>