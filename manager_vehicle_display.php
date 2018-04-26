<?php
session_start();
if (isset($_SESSION['user'])) {
  include_once 'dbattributes.php';
  include 'start_template.html';
  include 'manager_nav.php';
  include 'manager_vehicle_search_form.php';
  if (isset($_SESSION['removeConfirmation'])) {
    echo $_SESSION['removeConfirmation'];
    $_SESSION['removeConfirmation'] = null;
  }
  if (isset($_SESSION['manCarArray'])) {
    include 'manager_vehicles_table.php';
  }
}
?>
