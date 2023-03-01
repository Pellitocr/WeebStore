<?php	
	include("dbconnect.php");
	if(!isset($_GET['addkeys'])) {
		$_SESSION['addkeys']['keyNUM']="1";
		$_SESSION['addkeys']['classroom']="";
		$_SESSION['addkeys']['availability']="";
		$_SESSION['addkeys']['givenTo']="";
		$_SESSION['addkeys']['givenBy']="";
		$_SESSION['addkeys']['purpose']="";
		$_SESSION['addkeys']['duration']="";
		$_SESSION['addkeys']['date']="";
	}
?>
<h1>Add new keys/rooms</h1>
	<form method="post" action="home.php?page=addkeyconfirm" >
		<p>Classroom: <input type="text" name="classroom" value="<?php echo $_SESSION['addkeys']['classroom']; ?>" /></p>
		<p>Availability: <select name="availability" value="<?php echo $_SESSION['addkeys']['availability']; ?>" /></p>
			<option>--availability--</option>
			<option>Available</option>
			<option>Occupied</option>
			</select>
		<p>Given To: <select name="givenTo">
					<option>--Given To--</option>
			<?php $proflist_sql="SELECT * FROM profile";
				$proflist_qry=mysqli_query($db, $proflist_sql);
				$proflist_rs=mysqli_fetch_assoc($proflist_qry);
				do { ?>
					<option value="<?php echo $proflist_rs['ID']; ?>"
					<?php 
						if($proflist_rs['ID']==$_SESSION['addkeys']['givenTo']) {
							echo "selected=selected";
						}
					?>
					><?php echo $proflist_rs['name']; ?>
					<?php echo $proflist_rs['last_Name']; ?></option>
				<?php }	while ($proflist_rs=mysqli_fetch_assoc($proflist_qry));
		?></select>
		<p>Given By: <select name="givenBy">
					<option>--Given To--</option>
			<?php $proflist_sql="SELECT * FROM profile";
				$proflist_qry=mysqli_query($db, $proflist_sql);
				$proflist_rs=mysqli_fetch_assoc($proflist_qry);
				do { ?>
					<option value="<?php echo $proflist_rs['ID']; ?>"
					<?php 
						if($proflist_rs['ID']==$_SESSION['addkeys']['givenTo']) {
							echo "selected=selected";
						}
					?>
					><?php echo $proflist_rs['name']; ?>
					<?php echo $proflist_rs['last_Name']; ?></option>
				<?php }	while ($proflist_rs=mysqli_fetch_assoc($proflist_qry));
		?></select>
		<p>Purpose: <select name="purpose" value="<?php echo $_SESSION['addkeys']['purpose']; ?>" /></p>
			<option>--Purpose--</option>
			<option>Mainteinance</option>
			<option>Class</option>
			</select>
		<p>Duration: <select name="duration" value="<?php echo $_SESSION['addkeys']['duration']; ?>" /></p>
			<option>--Duration--</option>
			<option>7:30am to 8:00am</option>
			<option>8:00am to 9:00am</option>
			<option>9:00am to 9:50am</option>
			<option>9:00am to 10:50am</option>
			<option>11:30am to 12:00p</option>
			<option>12:00pm to 1:30pm</option>
			<option>1:30pm to 3:00pm</option>
			<option>3:00pm to 3:30pm</option>
			</select>
		<p>Date: <input type="text" name="birtdate" value="<?php echo $_SESSION['addkeys']['date']; ?>" /></p>
		
			<p><input type="submit" /></p>
	</form>