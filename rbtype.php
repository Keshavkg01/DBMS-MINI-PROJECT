<html>
<body>
<?php
	$dbh=mysqli_connect('localhost','root','')or die(mysqli_error());
	mysqli_select_db($dbh,'project')or die(mysqli_error($dbh));
	$user=$_REQUEST['user'];
	$btype=$_REQUEST['btype'];
	$location=1;
	$query="insert into rbtype(btype,user,location) values('$btype','$user','$location')";
        $result=mysqli_query($dbh,$query) or die(mysqli_error($dbh));
	$var=mysqli_query($dbh,"select *from rbtype");
	$var=mysqli_query($dbh,"select *from stock WHERE btype='".$btype."'");
		
		echo"<table border size=1>";
			echo"<tr>  <th>Location</th>  <th>Blood Type</th> <th>Quantity</th> </tr>";
				while($arr=mysqli_fetch_row($var))
				{
				  echo"<tr>  <td>$arr[0]</td>  <td>$arr[1]</td>  <td>$arr[2]</td> </tr>";
				}
			
		echo"</table>";
			
		?>
<h4 align="center">please choose anyone of the above </h4>


<br><br>
<form align="center" action="rbtypefinal.php">
select the blood bank:<br><br><select name="location">
 <option value="Bapuji Blood Bank,Town Hall Extension,Tumkur">Bapuji Blood Bank,Town Hall Extension,Tumkur</option>
                    <option value="Vinayaka Blood Bank,Opp Soundarya Paradise,Dasaarahalli,Bangalore">Vinayaka Blood Bank,Opp Soundarya Paradise,Dasaarahalli,Bangalore</option>
                    <option value="Jai Deva Blood Bank,Dairy Circle,WhiteField,Bangalore">Jai Deva Blood Bank,Dairy Circle,WhiteField,Bangalore</option>
                    <option value="Trinity Blood Bank,SS Puram,Tumkur">Trinity Blood Bank,SS Puram,Tumkur</option>
                    <option value="Siddaganga Blood Bank,Kythsandra,Tumkur">Siddaganga Blood Bank,Kythsandra,Tumkur</option>
                    <option value="Narayana Blood Bank,Bommsandra,Bangalore">Narayana Blood Bank,Bommsandra,Bangalore</option>
                    <option value="Bhagya Blood Bank,Opp GOVT Bus Stop,Gubbi">Bhagya Blood Bank,Opp GOVT Bus Stop,Gubbi</option>
		    </select><br><br>
<input type="submit" value="submit" name="submit" >
		
</form>


</body>
</html>