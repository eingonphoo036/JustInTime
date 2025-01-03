<link rel="stylesheet" type="text/css" href="materialstyle.css" />
<?php
             
    include "db_conn1.php";
     if(isset($_GET['search'])) {
         $searchTerm = $_GET['search'];
         
         $query = "SELECT * FROM `materials` Where  Material_Type LIKE '%$searchTerm%'";
         
         $query_run = mysqli_query($connection, $query);

         echo "<h2>$searchTerm</h2>";
  
          if (mysqli_num_rows($query_run) > 0) {
    
           

           foreach($query_run as $items)
           {         
            echo "<table>
            <tr>
            <td>" . $items["Material_Quantity"] . "</td>
            <td>" . $items["Material_Availability"] . "</td>   
            </tr>";
            echo "</table>";
         }
    
     } else {
            
        echo "<h2>NO Results found</h2>";
     }
    }         
            
$connection->close(); 
?>
