<?php
session_start();
include_once 'dbattributes.php';
$dbh = new PDO("mysql:host=".DBHOST.";port=".DBPORT.";dbname=".DBNAME.";charset=utf8mb4", DBUSER, DBPASS);
$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$vehicleTable = 'vehicle';
$installedTable = 'installed';
$onlotTable = "on_lot";
$soldTable = 'sold';
$make = '"'.$_POST['make'].'"';
$model = '"'.$_POST['model'].'"';

if ($_POST['maxPrice'] == "") {
  $stmt = "SELECT DISTINCT $vehicleTable.Vin, make, model, level, year, color, listedPrice, boughtPrice, Since, Type FROM $vehicleTable, $installedTable, $onlotTable WHERE $vehicleTable.model=$model AND $vehicleTable.Vin=$installedTable.Vin AND $vehicleTable.Vin=$onlotTable.Vin AND $vehicleTable.make=$make";
  $result = $dbh->query($stmt);
  $arr = $result->fetchall(PDO::FETCH_ASSOC);
  foreach ($arr as $key=>$car) {
    $vin = '"'.$arr[$key]['Vin'].'"';
    $stmt = "SELECT Spot FROM $onlotTable WHERE `Vin` = $vin";
    $result = $dbh->query($stmt);
    $temp = $result->fetchall(PDO::FETCH_ASSOC);
    $arr[$key]['Spot'] = $temp[0]['Spot'];
  }
  $stmt = "SELECT DISTINCT $vehicleTable.Vin, make, model, level, year, color, listedPrice, boughtPrice, Type FROM $vehicleTable, $installedTable, $soldTable WHERE $vehicleTable.model=$model AND $vehicleTable.Vin=$installedTable.Vin AND $vehicleTable.Type='Sold' AND $vehicleTable.make=$make AND $vehicleTable.Vin=$soldTable.Vin";
  $result = $dbh->query($stmt);
  $arr2 = $result->fetchall(PDO::FETCH_ASSOC);
  foreach ($arr2 as $car) {
    array_push($arr, $car);
  }
} else {
  $max = '"'.$_POST['maxPrice'].'"';
  $stmt = "SELECT DISTINCT $vehicleTable.Vin, make, model, level, year, color, listedPrice, boughtPrice, Since, Type FROM $vehicleTable, $installedTable, $onlotTable WHERE $vehicleTable.model=$model AND $vehicleTable.Vin=$installedTable.Vin AND $vehicleTable.Vin=$onlotTable.Vin AND $vehicleTable.make=$make AND $vehicleTable.listedPrice<=$max";
  $result = $dbh->query($stmt);
  $arr = $result->fetchall(PDO::FETCH_ASSOC);
  foreach ($arr as $key=>$car) {
    $vin = '"'.$arr[$key]['Vin'].'"';
    $stmt = "SELECT Spot FROM $onlotTable WHERE `Vin` = $vin";
    $result = $dbh->query($stmt);
    $temp = $result->fetchall(PDO::FETCH_ASSOC);
    $arr[$key]['Spot'] = $temp[0]['Spot'];
  }
  $stmt = "SELECT DISTINCT $vehicleTable.Vin, make, model, level, year, color, listedPrice, boughtPrice, Type FROM $vehicleTable, $installedTable, $soldTable WHERE $vehicleTable.model=$model AND $vehicleTable.Vin=$installedTable.Vin  AND $vehicleTable.Type='Sold' AND $vehicleTable.make=$make AND $vehicleTable.Vin=$soldTable.Vin  AND $vehicleTable.listedPrice<=$max";
  $result = $dbh->query($stmt);
  $arr2 = $result->fetchall(PDO::FETCH_ASSOC);
  foreach ($arr2 as $car) {
    array_push($arr, $car);
  }
}

$_SESSION['manCarArray'] = $arr;
header('Location: manager_vehicle_display.php');
?>
