<?php
$departmentTable = 'department';
$dbh = new PDO("mysql:host=".DBHOST.";port=".DBPORT.";dbname=".DBNAME.";charset=utf8mb4", DBUSER, DBPASS);
$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$stmt = "SELECT DISTINCT dname FROM $departmentTable";
$result = $dbh->query($stmt);
$departments = $result->fetchall(PDO::FETCH_ASSOC);
?>
<div class="box">
<div id="verticalSpace">
<form action='manager_contact_search_process.php' method='POST' enctype='multipart/form-data'>
  <div class="header">
  <h3>Contact Information</h3>
  </div>
  <div class="sep"></div>
  <div class="inputs">
    <select name="department">
      <?php
      foreach ($departments as $department){
          echo "<option>" . $department['dname'] . "</option>";
      }
      ?>
    </select>
    <input type="submit" value="Search">
  </div>
</form>
</div>
</div>
