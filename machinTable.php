<link rel="stylesheet" type="text/css" href="machine.css" />
<?php
include "db_conn1.php";
$sql = "SELECT * FROM `machines` where Machine_Name = 'Platter Printing'" ;
$result = $connection->query($sql);
if (!$result){
   die("Invalid query: " . $connection->error);
}
            
if ($result->num_rows > 0) {

    echo "<table>
            <tr>
            <th>Machines</th>
            <th>Availability</th>
            </tr>";

    while ($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>" . $row["Machine_ID"] . "</td>
                <td>" . $row["Machine_Status"] . "</td>
                
                   
            </tr>";
    }
    echo "</table>";
} 
$connection->close();
            
?>