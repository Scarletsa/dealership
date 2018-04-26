<table align = 'center'>
<tr>
<td>Name</td>
<td>Department ID</td>
<td>Department</td>
<td>Phone Number</td>
<td>Email</td>
</tr>
<?php
foreach ($_SESSION['empArray'] as $emp)
{
  echo "<tr>";
  echo "<td>" . $emp['name'] . "</td>";
  echo "<td>" . $emp['did'] . "</td>";
  echo "<td>" . $emp['dname'] . "</td>";
  echo "<td>" . $emp['phone'] . "</td>";
  echo "<td>" . $emp['email'] . "</td>";
  echo "</tr>";
}
?>
</table>
