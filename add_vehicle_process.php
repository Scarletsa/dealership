<?php
include_once 'dbattributes.php';
$vehiclesTable = 'vehicle';
$onlotTable = 'on_lot';
$installedTable = 'installed';
$trimTable = 'trim_level';
$dbh = new PDO("mysql:host=".DBHOST.";port=".DBPORT.";dbname=".DBNAME.";charset=utf8mb4", DBUSER, DBPASS);
$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$vin = '"'.trim($_POST['vin']).'"';
$make = '"'.trim($_POST['make']).'"';
$model = '"'.trim($_POST['model']).'"';
$year = '"'.trim($_POST['year']).'"';
$color = '"'.trim($_POST['color']).'"';
$spot = '"'.trim($_POST['spot']).'"';
$boughtPrice = '"'.trim($_POST['bought_price']).'"';
$listedPrice = '"'.trim($_POST['listed_price']).'"';
$lowestPrice = '"'.trim($_POST['lowest_price']).'"';
$trim = '"'.$_POST['trim'].'"';
$type = '"On_Lot"';
$date = date("Y-m-d");
$options = $_POST['option'];

$th = "(Vin, boughtPrice, listedPrice, lowestPrice, make, model, color, year, Type)";
$vals = "(" . $vin . ", " . $boughtPrice . ", " . $listedPrice . ", " . $lowestPrice . ", " . $make . ", " . $model . ", " . $color . ", "  . $year . ", " . $type . ")";
$stmt = "INSERT INTO $vehiclesTable $th VALUES $vals";
$result = $dbh->query($stmt);

$th = "(Vin, Spot, Since)";
$vals = "(" . $vin . ", " . $spot . ", '" . $date . "')";
$stmt = "INSERT INTO $onlotTable $th VALUES $vals";
$result = $dbh->query($stmt);

foreach ($options as $option) {
  $th = "(level, Oname, Vin)";
  $vals = "(" . $trim . ", '" . $option . "', " . $vin . ")";
  $stmt = "INSERT INTO $installedTable $th VALUES $vals";
  $result = $dbh->query($stmt);
}

$_SESSION['addConfirmation'] = "Car added successfully!";
header('Location: add_vehicle_form.php');
?>
