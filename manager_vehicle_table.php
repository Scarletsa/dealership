<table align = 'center'>
<tr>
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
  </tr>
  </tr>
</tr>
<?php
foreach ($_SESSION['manCarArray'] as $car)
{
  {
    echo "<tr>";
    echo "<td>" . $car['make'] . "</td>";
    echo "<td>" . $car['model'] . "</td>";
    echo "<td>" . $car['listedPrice'] . "</td>";
    echo "<td>" . $car['year'] . "</td>";
    echo "<td>" . $car['level'] . "</td>";
    echo "<td>" . $car['color'] . "</td>";
    echo "<td>" . $car['Since'] . "</td>";
    echo "<td>" . $car['Vin'] . "</td>";
    echo "<td>" . $car['Spot'] . "</td>";
    echo "<td>" . $car['boughtPrice'] . "</td>";
    echo "</tr>";
  }
}
  echo "</table>";
  echo "<br />Options:";
  echo "<ul>";
  foreach ($_SESSION['options'] as $opt)
  {
    echo "<li>" . $opt['Oname'] . "</li>";
  }
  echo "</ul>";
  include 'employee_vehicle_sell_form.php';
?>
</table>
