<html>
<body>
<?php
echo "you can collect the blood requested from the blood bank you selected";

		$dbh=mysqli_connect('localhost','root','')or die(mysqli_error());

		mysqli_select_db($dbh,'project')or die(mysqli_error($dbh));

		
		$location=$_REQUEST['location'];
		$query="update rbtype SET location='".$location."' where location=1";
		$result=mysqli_query($dbh,$query) or die(mysqli_error($dbh));
		
		$result2=mysqli_query($dbh,"SELECT * FROM rbtype group by time order by time desc");
		$arr=mysqli_fetch_row($result2);
		$btype=$arr[0];
		$location=$arr[2];
		
		$result4=mysqli_query($dbh,"SELECT SUM(quantity) AS value_sum FROM stock where location='".$location."' AND btype='".$btype."'"); 
		$row =mysqli_fetch_assoc($result4);
		$sum =$row['value_sum'];
		$count=$sum-1;
		$query5="update stock SET quantity='".$count."' where btype='".$arr[0]."' and location='".$arr[2]."'";
		$result5=mysqli_query($dbh,$query5) or die(mysqli_error($dbh));
?>

</body>
</html>