<?php
session_start();
include_once 'dbattributes.php';

$dbh = new PDO("mysql:host=".DBHOST.";port=".DBPORT.";dbname=".DBNAME.";charset=utf8mb4", DBUSER, DBPASS);
$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$employeeTable = 'employee';
$worksinTable = 'worksin';
$departmentTable = 'department';
$soldTable = 'sold';
$mostCars = 0;
$mostDollars = 0;

$stmt = "SELECT DISTINCT $employeeTable.empID, name, phone, email, salary, dname, $departmentTable.did FROM $employeeTable, $worksinTable, $departmentTable, $soldTable WHERE $departmentTable.did = $worksinTable.did AND $worksinTable.empID = $employeeTable.empID";
$result = $dbh->query($stmt);
$arr = $result->fetchall(PDO::FETCH_ASSOC);

foreach ($arr as $key=>$emp) {
  $id = '"'.$arr[$key]['empID'].'"';
  $stmt = "SELECT COUNT(empID) FROM $soldTable WHERE `empID` = $id";
  $result = $dbh->query($stmt);
  $temp = $result->fetchall(PDO::FETCH_ASSOC);
  $arr[$key]['numSold'] = $temp[0]['COUNT(empID)'];
  // $arr[$key]['totalSold'] = $temp[0]['SUM(priceSold)'];
  if ($arr[$key]['numSold'] > $mostCars) { // && $arr[$key]['totalSold'] > $mostDollars
    $_SESSION['topEmp'] = $arr[$key]['name'];
  }
}

$_SESSION['soldArray'] = $arr;

include 'start_template.html';
include 'manager_nav.php';
include 'manager_sold_table.php';
include 'end_template.html';
?>
