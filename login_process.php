<?php
session_start();
include_once 'dbattributes.php';
$user = $_POST['empID'];
$password = $_POST['password'];

$table = 'employee';
$dbh = new PDO("mysql:host=".DBHOST.";port=".DBPORT.";dbname=".DBNAME.";charset=utf8mb4", DBUSER, DBPASS);
$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$stmt = "SELECT * FROM $table WHERE empID='$user' AND password='$password'";
$result = $dbh->query($stmt);
$arr = $result->fetch(PDO::FETCH_ASSOC);
if ($arr != NULL) {
  $_SESSION['empArray'] = null;
  $_SESSION['carArray'] = null;
  $_SESSION['user']=$arr['empid'];
  if ($user > 50000) {
    header('Location: manager_sold_display.php');
  } else {
    header('Location: employee_vehicle_display.php');
  }
} else {
  $_SESSION['loginError']='Login or password was incorrect.';
  header('Location: login_form.php');
}
?>
