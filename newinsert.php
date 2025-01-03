<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $colour = $_POST["colour"];
    $size = $_POST["size"];
    $material = $_POST["material"];
    $machine = $_POST["machine"];
    $specification = $_POST["specification"];

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "floatfry";
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    $sql = "INSERT INTO product (colour, size, material, machine, Technical_Specification) 
    VALUES ('$colour', '$size', '$material', '$machine', '$specification')";
    if ($conn->query($sql) === TRUE) {
        header("Location: product.php");
exit();
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
    $conn->close();
}
?>
