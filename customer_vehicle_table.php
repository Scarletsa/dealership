<table align = 'center'>
<tr>
  <td>VIN</td>
  <td>Make</td>
  <td>Model</td>
  <td>Year</td>
  <td>Trim</td>
  <td>Color</td>
  <td>Listed Price</td>
</tr>
<?php
foreach ($_SESSION['carArray'] as $car)
{
  echo "<tr>";
  echo "<td>" . $car['Vin'] . "</td>";
  echo "<td>" . $car['make'] . "</td>";
  echo "<td>" . $car['model'] . "</td>";
  echo "<td>" . $car['year'] . "</td>";
  echo "<td>" . $car['level'] . "</td>";
  echo "<td>" . $car['color'] . "</td>";
  echo "<td>" . $car['listedPrice'] . "</td>";
  echo "</tr>";
}
  echo "</table>";
  echo "<br />Options:";
  echo "<ul>";
  foreach ($_SESSION['options'] as $opt)
  {
    echo "<li>" . $opt['Oname'] . "</li>";
  }
  echo "</ul>";

$_SESSION['carArray'] = NULL
?>
</table>
