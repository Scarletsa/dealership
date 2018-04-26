<table align = 'center'>
<tr>
<td>Make</td>
<td>Model</td>
<td>Listed Price</td>
<td>Year</td>
<td>Trim</td>
<td>Color</td>
<td>On Lot Since</td>
<td>VIN</td>
<td>Spot</td>
<td>Bought Price</td>
<td>Remove</td>
</tr>
<?php
foreach ($_SESSION['manCarArray'] as $car)
{
  echo "<tr>";
  echo "<td>" . $car['make'] . "</td>";
  echo "<td>" . $car['model'] . "</td>";
  echo "<td>" . $car['listedPrice'] . "</td>";
  echo "<td>" . $car['year'] . "</td>";
  echo "<td>" . $car['level'] . "</td>";
  echo "<td>" . $car['color'] . "</td>";
  if (isset($car['Since'])) {
    echo "<td>" . $car['Since'] . "</td>";
  } else {
    echo "<td></td>";
  }
  echo "<td><a href='manager_vehicle_display_info.php?vin=" . $car['Vin'] . "'>" . $car['Vin'] . "</a></td>";
  if ($car['Type'] == 'Sold') {
    echo "<td>" . $car['Type'] . "</td>";
  } else if ($car['Type'] == 'On_Lot') {
    echo "<td>" . $car['Spot'] . "</td>";
  }
  echo "<td>" . $car['boughtPrice'] . "</td>";
  echo "<td><a href='delete_vehicle_process.php?vin=" . $car['Vin'] . "'>Delete</a></td>";
  echo "</tr>";
}
if (isset($_SESSION['removeConfirmation'])) {
  echo $_SESSION['removeConfirmation'];
  $_SESSION['removeConfirmation'] = null;
}
?>
</table>
