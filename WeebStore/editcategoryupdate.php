<?php	
	include("dbconnect.php");
	session_start();
	if(!isset($_SESSION['admin'])) {
		header("Location:index.php");
	}
$editcat_sql="UPDATE category SET name='".$_SESSION['editcategory']['name']."' WHERE categoryID=".$_SESSION['editcategory']['categoryID'];
$editcat_query=mysqli_query($db, $editcat_sql);

unset($_SESSION['editcategory']);
?>
<h1>Edit category</h1>
<p>Category Succesfully updated</h1>
<p><a href="index.php?page=admin">Back to admin panel</a></p>