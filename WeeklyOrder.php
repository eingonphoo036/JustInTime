<!DOCTYPE html>
<html lang="en">
<head>
      <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatiable" content="ie=edge">
    <title>Weekly Order Table</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="week.css">
</head>
<body>
       <button class="btn" onclick="goBack()">
        <i class="fa fa-angle-right"></i>
    </button>
    <main class="table">
<img src="./Screenshot_2023-10-03_at_15.16.27-removebg-preview.png" alt="img" class="logo">
        <section class="table_header">
            <h1>Weekly Order</h1>
        </section>

    <table class="center">
        <thead>
            <tr>
                <th>Product Line</th>
                <th>Quantity</th>
                <th>Materials</th>
                <th>Design Pattern</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <?php
         $servername = "localhost";
            $username = "root";
            $password = ""; 

            $conn = new mysqli($servername, $username, $password, "floatfry");

            
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

          
            $sql = "SELECT * FROM customerorder";
            $result = $conn->query($sql);

     
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "<tr>
                            <td>".$row["Product_Line"]."</td>
                            <td>".$row["quantity"]."</td>
                            <td>".$row["Materials"]."</td>
                            <td>".$row["design_pattern"]."</td>
                            <td>".$row["status"]."</td>
                          </tr>";
                }
            } else {
                echo "<tr><td colspan='5'>No data available</td></tr>";
            }
            $conn->close();
            ?>
        </tbody>
    </table>
<script>
  function goBack() {
        window.history.back();
    }
     </script>

</body>
</html>
