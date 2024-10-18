<?php

$servername = "localhost"; 
$username = "your_username"; 
$password = "your_password"; 
$dbname = "gloovia"; 


$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT orderitem_id, quantity, price FROM orderitem";
$result = $conn->query($sql);


if ($result->num_rows > 0) {
    
    echo "<table>";
    echo "<tr><th>Order Item ID</th><th>Quantity</th><th>Price</th></tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row['orderitem_id'] . "</td>";
        echo "<td>" . $row['quantity'] . "</td>";
        echo "<td>$" . $row['price'] . "</td>";
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "No order items found.";
}


$conn->close();
?>
