<?php
include_once 'dbattributes.php';
include 'start_template.html';
include 'manager_nav.php';
$departmentTable = 'department';
$dbh = new PDO("mysql:host=".DBHOST.";port=".DBPORT.";dbname=".DBNAME.";charset=utf8mb4", DBUSER, DBPASS);
$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$stmt = "SELECT * FROM $departmentTable";
$result = $dbh->query($stmt);
$departments = $result->fetchall(PDO::FETCH_ASSOC);
?>
<div class="box">
<div id="verticalSpace">
<form action='add_employee_process.php' method='POST' enctype='multipart/form-data'>
<div class="header">
<h3>Employee Information</h3>
</div>
<div class="sep"></div>
<div class="inputs">
    <input type = "text" name = "fname" placeholder="First Name" autofocus required/><br>
    <input type = "text" name = "lname" placeholder="Last Name" required/><br>
    <input type = "text" name = "DoB" placeholder="DoB YYYY-MM-DD" required/><br>
    <input type = "text" name = "address" placeholder="Address" required/><br>
    <input type = "text" name = "phone" placeholder="Phone Number" required/><br>
    <input type = "text" name = "ssn" placeholder="Social Security Number" required/><br>
    <input type = "text" name = "salary" placeholder="Salary" required/><br>
    <select name="department">
          <?php
          foreach ($departments as $department){
              echo "<option value=" . $department['did'] . ">" . $department['dname'] . "</option>";
          }
          ?>
    </select>
    Manager:<input type='checkbox' name='manages' value='yes'>
</div>

<br />
<input type="submit" value="Add Employee">
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
