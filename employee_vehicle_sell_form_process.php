<?php
session_start();
include_once 'dbattributes.php';
$dbh = new PDO("mysql:host=".DBHOST.";port=".DBPORT.";dbname=".DBNAME.";charset=utf8mb4", DBUSER, DBPASS);
$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$onlotTable = "on_lot";
$soldTable = "Sold";
$soldByTable = "Sold_by";
$vehicleTable = 'vehicle';
$invoiceNumber = 10000000000 + rand(100000000,999999999);
$loanNumber = rand(100000,999999);

$now = time();
$your_date = strtotime($_SESSION['carArray'][0]['Since']);
$datediff = $now - $your_date;
$daysOnLot = round($datediff / (60 * 60 * 24));
$date = date("Y-m-d");

if ($_POST['sellPrice'] >= $_SESSION['carArray'][0]['lowestPrice']) {

  $stmt = "INSERT INTO sold (Vin, empid, DateSold, invoiceNum, daysOnLot, priceSold) VALUES ('" . $_SESSION['carArray'][0]['Vin'] . "', '" . $_SESSION['user'] . "', '" . $date . "', '" . $invoiceNumber . "', '" . $daysOnLot   . "', '" . $_POST['sellPrice'] . "')";
  $result = $dbh->query($stmt);
  if ($_POST['financing'] == "Yes") {
    $stmt = "INSERT INTO sold_by VALUES ('" . $_SESSION['user'] . "', '" . $invoiceNumber . "', '" . $loanNumber . "')";
  } else {
    $stmt = "INSERT INTO sold_by VALUES ('" . $_SESSION['user'] . "', '" . $invoiceNumber . "', '0')";
  }
  $result = $dbh->query($stmt);
  $stmt = "UPDATE Vehicle SET Type = 'Sold' WHERE Vin = '" . $_SESSION['carArray'][0]['Vin'] . "'";
  $result = $dbh->query($stmt);
  $_SESSION['sellComplete'] = "Car sold successfully!";
} else {
  $_SESSION['sellComplete'] = "Enter a total greater than the sell price";
}
  $_SESSION['carArray'] = NULL;
  header('Location: employee_vehicle_display.php');
?>
