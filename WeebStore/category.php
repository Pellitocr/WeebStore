<?php	
	if(!isset($_GET['categoryID'])) {
		header("Loation:index.php");
	}
	$stock_sql="SELECT stock.stockID, stock.name, stock.price, stock.photo, category.name AS catname FROM stock JOIN category ON stock.categoryID=category.categoryID WHERE stock.categoryID=".$_GET['categoryID'];
	if($stock_query=mysqli_query($db,$stock_sql)) {
		$stock_rs=mysqli_fetch_assoc($stock_query);
	}
	if(mysqli_num_rows($stock_query)==0) {
		echo "Sorry, we have no items currently in stock";
	} else {
		?>
		<h1><?php echo $stock_rs['catname']; ?><h1>
		<?php do {
			?>
			<div class="item">
			<a href="index.php?page=item&stockID=<?php echo $stock_rs['stockID']; ?>">
			<p><img src="images/photos/<?php echo $stock_rs['photo']; ?>" height="150"></p>
			<p><?php echo $stock_rs['name']; ?></p>
			<p>$<?php echo $stock_rs['price']; ?></p></a>
			<p></p>
			<br />
			</div>
		<?php
		} while ($stock_rs=mysqli_fetch_assoc($stock_query));
		?>
	<?php
	}
	?>		