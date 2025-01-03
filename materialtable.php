<link rel="stylesheet" type="text/css" href="materialstyle.css" />
<?php
include "db_conn1.php";
$sql = "SELECT * FROM `materials`";
$result = $connection->query($sql);
if (!$result){
   die("Invalid query: " . $connection->error);
}
            
if ($result->num_rows > 0) {
    echo "<table>
            <tr>
            <th>Material</th>
            <th>Quantity</th>
            <th>Availability</th>
            </tr>";

    while ($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>" . $row["Material_Type"] . "</td>
                <td>" . $row["Material_Quantity"] . "</td>
                <td>" . $row["Material_Availability"] . "</td>
                
                
            </tr>";
    }
    echo "</table>";
} 
$connection->close();
            
?>