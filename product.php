<?php

$servername = "localhost"; 
$username = "root"; 
$password = ""; 
$dbname = "gloovia"; 


$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


$sql = "SELECT pro_id, pro_image, pro_name, pro_discrition, pro_price FROM products";
$result = $conn->query($sql);


if ($result->num_rows > 0) {
    
    while($row = $result->fetch_assoc()) {
        echo "<div class='product'>";
        echo "<img src='uploads/" . $row['pro_image'] . "' alt='" . $row['pro_name'] . "' />";
        echo "<h3>" . $row['pro_name'] . "</h3>";
        echo "<p>" . $row['pro_discrition'] . "</p>";
        echo "<p>Price: $" . $row['pro_price'] . "</p>";
        echo "</div>";
    }
} else {
    echo "No products found.";
}


$conn->close();
?>
