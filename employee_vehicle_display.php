<?php
session_start();
if (isset($_SESSION['user'])) {
  include_once 'dbattributes.php';
  include 'start_template.html';
  include 'employee_nav.php';
  include 'employee_vehicle_search_form.php';
  if (isset($_SESSION['carArray'])) {
    include 'employee_vehicles_table.php';
  }
  if (isset($_SESSION['sellComplete'])) {
    echo $_SESSION['sellComplete'];
    $_SESSION['sellComplete'] = null;
  }
  include 'end_template.html';
}
?>
