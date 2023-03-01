<?php
// deletestockselect.php
session_start();
unset($_SESSION['deletestock']);
// Check if user is logged in by testing if the admin session has been set. If not, redirect the browser to the admin page, which should display the login form.
if(!isset($_SESSION['admin'])) {
	header("Location:admin.php");	
}

// include the database connection code
	include("dbconnect.php");
?>
	<p><a href="index.php?page=admin">Back to admin panel</a></p>
	<h1>Select stock item to delete</h1>
	<?php
	$category_sql="SELECT * FROM category";
	$category_query = mysqli_query($db, $category_sql);
	$category_rs = mysqli_fetch_assoc($category_query);
	do {
	?>
	<h2><?php echo $category_rs['name']; ?></h2>
	<?php
	$stock_sql="SELECT stockID, name, photo FROM stock WHERE categoryID=".$category_rs['categoryID'];
	$stock_query=mysqli_query($db, $stock_sql);
	$count=mysqli_num_rows($stock_query);
	$stock_rs=mysqli_fetch_assoc($stock_query);
	do { ?>
	<p><a href="index.php?page=deleteconfirmstock&stockID=<?php echo $stock_rs['stockID']; ?>">
		 <?php if($count>0) { ?>
			<img src="images/photos/<?php echo $stock_rs['photo']; ?>" height="150">
		<?php } ?>
		 <?php echo $stock_rs['name']; ?></a></p> 
		 
	 <?php } while ($stock_rs=mysqli_fetch_assoc($stock_query));
	 ?>
   <?php } while ($category_rs = mysqli_fetch_assoc($category_query));
	 mysqli_free_result($stock_query);
	 mysqli_free_result($category_query);