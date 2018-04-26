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
  $str  = "<td><a href='customer_vehicle_display_info.php?vin=" . $car['Vin'] . "'>" . $car['Vin'] . "</a></td>";
  echo "<tr>";
  echo $str;
  echo "<td>" . $car['make'] . "</td>";
  echo "<td>" . $car['model'] . "</td>";
  echo "<td>" . $car['year'] . "</td>";
  echo "<td>" . $car['level'] . "</td>";
  echo "<td>" . $car['color'] . "</td>";
  echo "<td>" . $car['listedPrice'] . "</td>";
  echo "</tr>";
}
?>
</table>
