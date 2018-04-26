<?php
session_start();
include_once 'dbattributes.php';
include 'start_template.html';
include 'manager_nav.php';
include 'manager_contact_search_form.php';
if (isset($_SESSION['removeConfirmation'])) {
  echo $_SESSION['removeConfirmation'];
  $_SESSION['removeConfirmation'] = null;
}
if (isset($_SESSION['manEmpArray'])) {
  include 'manager_contacts_table.php';
}
include 'end_template.html';
?>
