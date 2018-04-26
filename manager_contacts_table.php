<table align = 'center'>
<tr>
<td>Name</td>
<td>Department</td>
<td>Department ID</td>
<td>Phone Number</td>
<td>Email</td>
<td>Address</td>
<td>Salary</td>
<td>Date of Birth</td>
<td>Fire</td>
</tr>
<?php
foreach ($_SESSION['manEmpArray'] as $emp)
{
  echo "<tr>";
  echo "<td>" . $emp['name'] . "</td>";
  echo "<td>" . $emp['dname'] . "</td>";
  echo "<td>" . $emp['did'] . "</td>";
  echo "<td>" . $emp['phone'] . "</td>";
  echo "<td>" . $emp['email'] . "</td>";
  echo "<td>" . $emp['address'] . "</td>";
  echo "<td>$" . $emp['salary'] . "</td>";
  echo "<td>" . $emp['DoB'] . "</td>";
  echo "<td><a href='delete_employee_process.php?id=" . $emp['empID'] . "'>Fire</a></td>";
  echo "</tr>";
}
?>
</table>
