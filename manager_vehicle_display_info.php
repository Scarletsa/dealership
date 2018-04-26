<?php
session_start();
if (isset($_SESSION['user'])) {
  include_once 'dbattributes.php';
  $dbh = new PDO("mysql:host=".DBHOST.";port=".DBPORT.";dbname=".DBNAME.";charset=utf8mb4", DBUSER, DBPASS);
  $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  $vehicleTable = 'vehicle';
  $installedTable = 'installed';
  $onlotTable = "on_lot";
  $vin = '"'.$_GET['vin'].'"';
  $stmt = "SELECT DISTINCT $vehicleTable.Vin, make, model, level, year, color, listedPrice, boughtPrice, Spot, Since FROM $vehicleTable, $installedTable, $onlotTable WHERE $vehicleTable.Vin=$installedTable.Vin AND $vehicleTable.Vin=$onlotTable.Vin AND $vehicleTable.Vin=$vin";
  $result = $dbh->query($stmt);
  $arr = $result->fetchall(PDO::FETCH_ASSOC);
  $_SESSION['manCarArray'] = $arr;
  $stmt = "SELECT DISTINCT Oname FROM $vehicleTable, $installedTable WHERE $vehicleTable.Vin=$installedTable.Vin AND $vehicleTable.Vin=$vin";
  $result = $dbh->query($stmt);
  $arr = $result->fetchall(PDO::FETCH_ASSOC);
  $_SESSION['options'] = $arr;
  include 'start_template.html';
  include 'manager_nav.php';
  include 'manager_vehicle_search_form.php';
  include 'manager_vehicle_table.php';
  include 'end_template.html';
}
?>
