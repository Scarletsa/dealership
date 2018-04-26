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

  $stmt = "DELETE FROM $onlotTable WHERE $onlotTable.Vin=$vin";
  $result = $dbh->query($stmt);
  $stmt = "DELETE FROM $installedTable WHERE $installedTable.Vin=$vin";
  $result = $dbh->query($stmt);
  $stmt = "DELETE FROM $vehicleTable WHERE $vehicleTable.Vin=$vin";
  $result = $dbh->query($stmt);

  $_SESSION['removeConfirmation'] = "Car removed successfully!";
  $_SESSION['carArray'] = null;
  header('Location: manager_vehicle_display.php');
}
?>
