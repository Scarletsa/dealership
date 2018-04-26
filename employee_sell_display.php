<?php
session_start();
if (isset($_SESSION['user'])) {
  include_once 'dbattributes.php';
  include 'start_template.html';
  include 'employee_header.php';
  include 'employee_sell_search_form.php';
  if (isset($_SESSION['carArray'])) {
    include 'employee_sell_table.php';
  }
  include 'end_template.hmtl';
}
?>
