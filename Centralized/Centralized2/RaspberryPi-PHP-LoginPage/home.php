<?php 
session_start();

if (isset($_SESSION['id']) && isset($_SESSION['user_name'])) {

 ?>
<!DOCTYPE html>
<html>
<head>
	<title>HOME</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
     <h1>Hello, <?php echo $_SESSION['name']; ?></h1>



<?php
if (isset($_POST["on"])) {
  $result=shell_exec('home/pi/script/on.py');
  echo $result;
}
if (isset($_POST["off"])) {
  $result=shell_exec('home/pi/script/off.py');
  echo $result;
}
?>
    <form method="POST" />
      <input type="submit" value="On" name="on" /><p>
      <input type="submit" value="Off" name="off" />
    </form>

    <p>

    <a href="logout.php">Logout</a>

</body>
</html>

<?php
}else{
     header("Location: index.php");
     exit();
}
 ?>
