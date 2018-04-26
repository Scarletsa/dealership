<?php
session_start();
include_once 'dbattributes.php';
include 'start_template.html';
include 'customer_nav.php';
include 'customer_vehicle_search_form.php';
$installedTable = 'installed';
$vin = '"'.$_GET['vin'].'"';
$stmt = "SELECT DISTINCT $vehicleTable.Vin, make, model, level, year, color, listedPrice FROM $vehicleTable, $installedTable WHERE $vehicleTable.Vin=$installedTable.Vin AND $vehicleTable.Vin=$vin";
$result = $dbh->query($stmt);
$arr = $result->fetchall(PDO::FETCH_ASSOC);
$_SESSION['carArray'] = $arr;
$stmt = "SELECT DISTINCT Oname FROM $vehicleTable, $installedTable WHERE $vehicleTable.Vin=$installedTable.Vin AND $vehicleTable.Vin=$vin";
$result = $dbh->query($stmt);
$arr = $result->fetchall(PDO::FETCH_ASSOC);
$_SESSION['options'] = $arr;
if (isset($_SESSION['carArray'])) {
  include 'customer_vehicle_table.php';
}
include 'end_template.html';
?>
