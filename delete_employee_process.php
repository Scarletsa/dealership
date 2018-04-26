<?php
session_start();
if (isset($_SESSION['user'])) {
  include_once 'dbattributes.php';

  $dbh = new PDO("mysql:host=".DBHOST.";port=".DBPORT.";dbname=".DBNAME.";charset=utf8mb4", DBUSER, DBPASS);
  $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  $employeeTable = 'employee';
  $managerTable = 'manages';
  $worksinTable = "worksin";
  $id = '"'.$_GET['id'].'"';


  $stmt = "DELETE FROM $worksinTable WHERE $worksinTable.empID=$id";
  $result = $dbh->query($stmt);
  $stmt = "DELETE FROM $managerTable WHERE $managerTable.empID=$id";
  $result = $dbh->query($stmt);
  $stmt = "DELETE FROM $employeeTable WHERE $employeeTable.empID=$id";
  $result = $dbh->query($stmt);

  $_SESSION['removeConfirmation'] = "Employee $id removed successfully!";
  $_SESSION['empArray'] = null;
  header('Location: manager_contact_display.php');
}
?>
