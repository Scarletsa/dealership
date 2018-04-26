<?php
session_start();
include_once 'dbattributes.php';
include 'start_template.html';
include 'customer_nav.php';
include 'customer_vehicle_search_form.php';
if (isset($_SESSION['carArray'])) {
  include 'customer_vehicles_table.php';
}
include 'end_template.html';
?>
