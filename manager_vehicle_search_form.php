<?php
$vehicleTable = "vehicle";
$dbh = new PDO("mysql:host=".DBHOST.";port=".DBPORT.";dbname=".DBNAME.";charset=utf8mb4", DBUSER, DBPASS);
$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$stmt = "SELECT DISTINCT make FROM $vehicleTable";
$result = $dbh->query($stmt);
$makes = $result->fetchall(PDO::FETCH_ASSOC);
$stmt = "SELECT DISTINCT model FROM $vehicleTable";
$result = $dbh->query($stmt);
$models = $result->fetchall(PDO::FETCH_ASSOC);
?>
<div class="box">
<div id="verticalSpace">
<form action='manager_vehicle_search_process.php' method='POST' enctype='multipart/form-data'>
  <div class="header">
  <h3>Vehicle Information</h3>
  </div>
  <div class="sep"></div>
  <div class="inputs">
    <input type = "text" name = "maxPrice" placeholder="Max Price"/><br />
    <select name="make">
      <?php
      foreach ($makes as $make){
        if ($make['make'] != "make") {
          echo "<option>" . $make['make'] . "</option>";
        }
      }
      ?>
    </select>
    <select name="model">
      <?php
      foreach ($models as $model){
        if ($model['model'] != "model") {
          echo "<option>" . $model['model'] . "</option>";
        }
      }
      ?>
    </select>
    <br />
    <br />
    <input type="submit" value="Search">
  </div>
</form>
</div>
</div>
