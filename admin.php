<!doctype html>
<html>
<head>
<title>Admin Login</title>

    <style> 
       body {
  background-image:url('pass.png');
  background-repeat:no-repeat;
  background-attachment:fixed;
  background-size: cover;
}
    </style>
</head>
<body>
<h1>Enter the username and password </h1>
     
  
<form action="" method="POST">
Username: <input type="text" name="user"><br><br>
Password: <input type="password" name="pass"><br><br>	
<input type="submit" value="Login" name="submit" >
</form>
<?php
if(isset($_POST["submit"])){

if(!empty($_POST['user']) && !empty($_POST['pass'])) {
	$user=$_POST['user'];
	$pass=$_POST['pass'];

	$con=mysqli_connect('localhost','root','') or die(mysqli_error());
	mysqli_select_db($con,'project') or die("cannot select DB");

	$query=mysqli_query($con,"SELECT * FROM alogin WHERE user='".$user."' AND pass='".$pass."'" );
	$numrows=mysqli_num_rows($query);
	if($numrows!=0)
	{
	while($row=mysqli_fetch_assoc($query))
	{
	$dbusername=$row['user'];
	$dbpassword=$row['pass'];
	}

	if($user == $dbusername && $pass == $dbpassword)
	{
	session_start();
	$_SESSION['sess_user']=$user;

	/* Redirect browser */
	header("Location: ainfo.php");
	}
	} else {
	echo "Invalid username or password!";
	}

} else {
	echo "All fields are required!";
}
}
?>
<br><br><br>
<a href="index.html" >click here for home page</a> 
</body>
</html>