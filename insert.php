<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "floatfry";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $stamperName = $_POST['stamperName'];
    $stamperShift = $_POST['stamperShift'];
    $machineType = $_POST['machineType'];
    $machineID = $_POST['machineID'];
    $date = $_POST['date'];
    
    // Determine time based on shift
    if ($stamperShift === "AM") {
        $time = "06:00-14:00"; // 6 AM
    } else {
        $time = "14:00-22:00"; // 2 PM
    }

    $product = $_POST['Product'];

    // Retrieve Stamper_ID based on Stamper_Name from the stamper table
    $sqlGetStamperID = "SELECT Stamper_ID FROM stamper WHERE Stamper_Name = '$stamperName'";
    $resultStamperID = $conn->query($sqlGetStamperID);

    if ($resultStamperID->num_rows > 0) {
        $row = $resultStamperID->fetch_assoc();
        $stamperID = $row['Stamper_ID'];

        // Insert data into the database without specifying Shift_Table_ID
        $sql = "INSERT INTO shifttable (Stamper_ID, Stamper_Name, Machine_Type, Machine_ID, Shift, Day, Time, Product)
        VALUES ('$stamperID', '$stamperName', '$machineType', '$machineID', '$stamperShift', '$date', '$time', '$product')";

        if ($conn->query($sql) === TRUE) {
            header("Location: floor_home.php");
                exit();
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    } else {
        echo "Stamper not found";
    }
}

$conn->close();
?>
