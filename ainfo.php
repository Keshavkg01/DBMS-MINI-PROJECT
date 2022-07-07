<html>
<body>
<h2>hii admin</h2>
<h3>here is the the info of full stocks of blood bank </h3>

<?php
$dbh=mysqli_connect('localhost','root','') or die(mysqli_error());
mysqli_select_db($dbh,'project') or die(mysqli_error($dbh));
$var=mysqli_query($dbh,"select * from stock");
echo "<table border size=1>";
echo "<tr> <th>btype</th> <th>location</th> <th>quantity</th> </tr>";

while ($arr=mysqli_fetch_row($var))
{
  echo"<tr>  <td>$arr[0]</td> <td>$arr[1]</td> <td>$arr[2]</td>  </tr>";
}
echo"</table>";
?>


<h3>donors information</h3>
<?php
$dbh=mysqli_connect('localhost','root','') or die(mysqli_error());
mysqli_select_db($dbh,'project') or die(mysqli_error($dbh));
$var=mysqli_query($dbh,"select * from donor");
echo "<table border size=1>";
echo "<tr> <th>fname</th> <th>lname</th> <th>dob</th> <th>gender</th> <th>address</th> <th>pno</th> <th>adhar number</th></tr>";
while ($arr=mysqli_fetch_row($var))
{
  echo"<tr>  <td>$arr[0]</td> <td>$arr[1]</td> <td>$arr[2]</td> <td>$arr[3]</td> <td>$arr[4]</td> <td>$arr[5]</td> <td>$arr[6]</td>  </tr>";
}
echo"</table>";
?>


<h3>recepients information</h3>

<?php
$dbh=mysqli_connect('localhost','root','') or die(mysqli_error());
mysqli_select_db($dbh,'project') or die(mysqli_error($dbh));
$var=mysqli_query($dbh,"select * from recepient");
echo "<table border size=1>";
echo "<tr> <th>fname</th> <th>lname</th> <th>dob</th> <th>gender</th> <th>address</th> <th>pno</th> <th>adhar number</th></tr>";

while ($arr=mysqli_fetch_row($var))
{
  echo"<tr>  <td>$arr[0]</td> <td>$arr[1]</td> <td>$arr[2]</td> <td>$arr[3]</td> <td>$arr[4]</td> <td>$arr[5]</td> <td>$arr[6]</td>  </tr>";
}
echo"</table>";
?>
</body>
</html>