<link rel="stylesheet" type="text/css" href="machine.css" />
<?php
             
    include "db_conn1.php";
     if(isset($_GET['search'])) {
         $searchTerm = $_GET['search'];
         
         $query = "SELECT * FROM `machines` Where  Machine_Name LIKE '%$searchTerm%' and Machine_Status = 'available' ";
         
         $query_run = mysqli_query($connection, $query);

         echo "<h2>$searchTerm</h2>";
  
          if (mysqli_num_rows($query_run) > 0) {
    
           //where Machine_Status = 'running'

           foreach($query_run as $items)
           {         
            echo "<table>
            <tr>
            <td>" . $items["Machine_ID"] . "</td>   
            </tr>";
            echo "</table>";
         }
    
     } else {
            
        echo "<h2>NO Results found</h2>";
     }
    }         
            
$connection->close(); 
?>
