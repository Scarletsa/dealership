<?php
session_start();
include_once 'dbattributes.php';
$dbh = new PDO("mysql:host=".DBHOST.";port=".DBPORT.";dbname=".DBNAME.";charset=utf8mb4", DBUSER, DBPASS);
$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$employeeTable = 'employee';
$worksinTable = 'worksin';
$departmentTable = 'department';
$department = "'".$_POST['department']."'";

$stmt = "SELECT $employeeTable.empID, name, phone, email, address, DoB, salary, dname, $departmentTable.did FROM $employeeTable, $worksinTable, $departmentTable WHERE $departmentTable.dname = $department AND $departmentTable.did = $worksinTable.did AND $worksinTable.empID = $employeeTable.empID";
$result = $dbh->query($stmt);
$arr = $result->fetchall(PDO::FETCH_ASSOC);

$_SESSION['manEmpArray'] = $arr;
header('Location: manager_contact_display.php');
?>
