<div class="header">
<h3>Top Salesperson</h3>
<?php
echo "<h2>" . $_SESSION['topEmp'] . "</h2>";
?>
</div>
<br />
<table align = 'center'>
  <tr>
    <td>Vehicles Sold</td>
    <td>Name</td>
    <td>Department</td>
    <td>Phone Number</td>
    <td>Email</td>
    <td>Salary</td>
  </tr>
  <?php
  foreach ($_SESSION['soldArray'] as $emp)
  {
    echo "<tr>";
    echo "<td>" . $emp['numSold'] . "</td>";
    echo "<td>" . $emp['name'] . "</td>";
    echo "<td>" . $emp['dname'] . "</td>";
    echo "<td>" . $emp['phone'] . "</td>";
    echo "<td>" . $emp['email'] . "</td>";
    echo "<td>" . $emp['salary'] . "</td>";
    echo "</tr>";
  }
  ?>
</table>
