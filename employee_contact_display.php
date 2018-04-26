<?php
session_start();
if (isset($_SESSION['user'])) {
  include_once 'dbattributes.php';
  include 'start_template.html';
  include 'employee_nav.php';
  include 'employee_contact_search_form.php';
  if (isset($_SESSION['empArray'])) {
    include 'employee_contacts_table.php';
  }
  include 'end_template.html';
}
?>
