<?php
session_start();
include_once 'dbattributes.php';
include 'start_template.html';
include 'customer_nav.php';
include 'customer_contact_search_form.php';
if (isset($_SESSION['empArray'])) {
  include 'customer_contacts_table.php';
}
include 'end_template.html';
?>
