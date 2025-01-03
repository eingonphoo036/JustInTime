<!DOCTYPE html>
<html>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Timetable Page</title>
    <meta name="title" content="website-design">
   <link rel="km icon" href="./imgbin_chili-con-carne-frying-pan-stock-pots-cookware-png.png" type="image/svg+xml">
    <link rel="stylesheet" type="text/css" href="stm_timetable.css">
<head>
    
    <style>
        body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    display: flex;
    flex-direction: column;
    align-items: center;
    height: 100vh;
    background-color: #bdbdbb;
  }
  .header {

top: 10px;
left: 20px;
position: fixed;

width: 100%;
box-sizing: border-box;

align-items: center;
justify-content: center;
}
.btn {
    float: right;
    background: transparent;
    border: transparent;
    margin-top: 40px;
    font-size: 30px;
}

.logo {
    max-width: 100px;
    max-height: 100px; 

    }
    h1{
        margin-top: 100px;
        margin-bottom: 100px;
        font-family: 'Courier New', monospace;
        font-style: oblique;
        font-weight: 600;
        font-size: 40px;
 }
        table {
            border-collapse: collapse;
            width: 80%; 

    border-radius:10px
            
       
        }
        th, td {
        border: 5px solid #70706f;
        padding: 16px;
        text-align: center;
        }
        th {
    background-color: #749e5f; 
  }
td{
    background-color: #edeceb;

}
    </style>
</head>
<body>
<div class="header">
        
        <img src="./Screenshot_2023-10-03_at_15.16.27-removebg-preview.png"  alt="Logo" class="logo">
    </div>
<button class="btn" onclick="goBack()">
    <i class="fa fa-angle-left"></i>
</button>
<h1> TIMETABLE </h1>
<h2>Shift Table </h2>

<table>
    <tr>
        <th>Stamper Name</th>
        <th>Machine Type</th>
        <th>Machine ID</th>
        <th>Product</th>
<th>Stamper Shift</th>
    </tr>

    <?php
    // Database connection parameters
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "floatfry";

  
    $conn = new mysqli($servername, $username, $password, $dbname);

 
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

  
    $sql = "SELECT Stamper_Name, Machine_Type, Machine_ID, Product,Time FROM shifttable";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
      
        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . $row["Stamper_Name"] . "</td>";
            echo "<td>" . $row["Machine_Type"] . "</td>";
            echo "<td>" . $row["Machine_ID"] . "</td>";
            echo "<td>" . $row["Product"] . "</td>";
echo "<td>" . $row["Time"] . "</td>";
            echo "</tr>";
        }
    } else {
        echo "<tr><td colspan='5'>No data found</td></tr>";
    }

    $conn->close();
    ?>
</table>
<script>
  function goBack() {
        window.history.back();
    }
     </script>
</body>
</html>
