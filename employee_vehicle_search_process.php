<?php
session_start();
include_once 'dbattributes.php';
$dbh = new PDO("mysql:host=".DBHOST.";port=".DBPORT.";dbname=".DBNAME.";charset=utf8mb4", DBUSER, DBPASS);
$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$vehicleTable = 'vehicle';
$installedTable = 'installed';
$onlotTable = "on_lot";
$make = '"'.$_POST['make'].'"';
$model = '"'.$_POST['model'].'"';

if ($_POST['maxPrice'] == "") {
  $stmt = "SELECT DISTINCT $vehicleTable.Vin, make, model, level, year, color, listedPrice, lowestPrice, Spot, Since FROM $vehicleTable, $installedTable, $onlotTable WHERE $vehicleTable.model=$model AND $vehicleTable.Vin=$installedTable.Vin AND $vehicleTable.Vin=$onlotTable.Vin AND $vehicleTable.make=$make AND $vehicleTable.Type='On_Lot' ORDER BY listedPrice DESC";
  $result = $dbh->query($stmt);
  $arr = $result->fetchall(PDO::FETCH_ASSOC);
} else {
  $max = '"'.$_POST['maxPrice'].'"';
  $stmt = "SELECT DISTINCT $vehicleTable.Vin, make, model, level, year, color, listedPrice, lowestPrice, Spot, Since FROM $vehicleTable, $installedTable, $onlotTable WHERE $vehicleTable.model=$model AND $vehicleTable.Vin=$installedTable.Vin AND $vehicleTable.Vin=$onlotTable.Vin AND $vehicleTable.make=$make AND $vehicleTable.Type='On_Lot' AND $vehicleTable.listedPrice<=$max ORDER BY listedPrice DESC";
  $result = $dbh->query($stmt);
  $arr = $result->fetchall(PDO::FETCH_ASSOC);
}

$_SESSION['carArray'] = $arr;
header('Location: employee_vehicle_display.php');
?>
