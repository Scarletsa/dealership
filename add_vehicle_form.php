<?php
session_start();
include_once 'dbattributes.php';
include 'start_template.html';
include 'manager_nav.php';
$optionsTable = 'options';
$trimTable = 'trim_level';
$onlotTable = 'on_lot';
$dbh = new PDO("mysql:host=".DBHOST.";port=".DBPORT.";dbname=".DBNAME.";charset=utf8mb4", DBUSER, DBPASS);
$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$stmt = "SELECT * FROM $optionsTable";
$result = $dbh->query($stmt);
$options = $result->fetchall(PDO::FETCH_ASSOC);
$stmt = "SELECT * FROM $trimTable";
$result = $dbh->query($stmt);
$trims = $result->fetchall(PDO::FETCH_ASSOC);
$stmt = "SELECT Spot FROM $onlotTable";
$result = $dbh->query($stmt);
$spots = $result->fetchall(PDO::FETCH_ASSOC);
$lex = array_fill(1, 80, 0);
foreach ($spots as $spot) {
  $lex[$spot['Spot']] = 1;
}
$availSpots = [];
foreach ($lex as $key=>$value) {
  if ($value == 0) {
    array_push($availSpots, $key);
  }
}
?>
<div class="box">
<div id="verticalSpace">
<form action='add_vehicle_process.php' method='POST' enctype='multipart/form-data'>
<div class="header">
<h3>Vehicle Information</h3>
</div>
<div class="sep"></div>
<div class="inputs">
    <input type = "text" name = "vin" placeholder="VIN" required/>
    <input type = "text" name = "make" placeholder="Make" required/>
    <input type = "text" name = "model" placeholder="Model" required/>
    <input type = "text" name = "year" placeholder="Year" required/>
    <input type = "text" name = "color" placeholder="Color" required/>
    <input type = "text" name = "bought_price" placeholder="Bought Price" required/>
    <input type = "text" name = "listed_price" placeholder="Listed Price" required/>
    <input type = "text" name = "lowest_price" placeholder="Lowest Price" required/>
<div class="header">
<h3>Options</h3>
</div>
<table>
<?php
foreach ($options as $option){
  echo "<tr><td><input type='checkbox' name='option[]' value='" . $option['Oname'] . "'></td><td>" . $option['Oname'] . "</td><td>Description:</td><td>" . $option['description'] . "</td></td>";
}
?>
</table>
<select name="spot">
  <?php
  foreach ($availSpots as $spot){
      echo "<option>" . $spot . "</option>";
  }
  ?>
</select>
<select name="trim">
  <?php
  foreach ($trims as $trim){
      echo "<option>" . $trim['level'] . "</option>";
  }
  ?>
</select>
<br /><br />
<input type="submit" value="Add Vehicle">
</div>
</form>
</div>
</div>

<?php
if (isset($_SESSION['addConfirmation'])) {
  echo $_SESSION['addConfirmation'];
  $_SESSION['addConfirmation'] = null;
}
include 'end_template.html';
?>
