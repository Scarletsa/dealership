<?php
session_start();
include_once 'dbattributes.php';
$dbh = new PDO("mysql:host=".DBHOST.";port=".DBPORT.";dbname=".DBNAME.";charset=utf8mb4", DBUSER, DBPASS);
$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$employeeTable = 'employee';
$worksinTable = 'worksin';
$name = "'".ucfirst(strtolower($_POST['fname'])). " " .ucfirst(strtolower($_POST['lname'])). "'";
$DoB = "'".trim($_POST['DoB'])."'";
$ssn = "'".trim($_POST['ssn'])."'";
$address = "'".trim($_POST['address'])."'";
$phone = "'".trim($_POST['phone'])."'";
$email = "'".str_replace(' ', '.', str_replace("'", '', $name))."@CenturyMazda.com'";
$salary = "'".trim($_POST['salary'])."'";
$did = "'".trim($_POST['department'])."'";
$started = date('Y-m-d');
$password = 12345;
if(isset($_POST['manages'])) {
  $empid = 50000 + rand(5, 9999);
} else {
  $empid = 10000 + rand(20, 9999);
}

$th = "(empid, SSN, name, phone, email, address, DoB, salary, password)";
$vals = "(" . $empid . ", " . $ssn . ", " . $name . ", " . $phone . ", " . $email . ", " . $address . ", " . $DoB . ", "  . $salary . ", " . $password . ")";
$stmt = "INSERT INTO $employeeTable $th VALUES $vals";
$result = $dbh->query($stmt);

$th = "(empid, did, started)";
$vals = "(" . $empid . ", " . $did . ", '" . $started . "')";
$stmt = "INSERT INTO $worksinTable $th VALUES $vals";
$result = $dbh->query($stmt);

if ($empid > 50000) {
  $managesTable = 'manages';
  $th = "(empid, did, started)";
  $vals = "(" . $empid . ", " . $did . ", '" . $started . "')";
  $stmt = "INSERT INTO $managesTable $th VALUES $vals";
  $result = $dbh->query($stmt);
}

$_SESSION['addConfirmation'] = "Employee added successfully!";
header('Location: add_employee_form.php');
?>
