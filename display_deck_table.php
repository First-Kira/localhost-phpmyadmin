<?php
// Database connection parameters
$servername = "localhost";  // Change this if your MySQL server is on a different host
$username = "root";         // MySQL username (default is root)
$password = "";             // MySQL password (default is empty)
$dbname = "yugioh_deck";    // Name of your database

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Query to fetch data from the table
$sql = "SELECT * FROM deck";
$result = $conn->query($sql);

// Display fetched data in a table
if ($result->num_rows > 0) {
    echo "<table border='1'>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Image</th>
                <th>Count</th>
            </tr>";
    // Output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>".$row["id"]."</td>
                <td>".$row["name"]."</td>
                <td><img src='".$row["imageUrl"]."' width='100'></td>
                <td>".$row["count"]."</td>
              </tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}

// Close connection
$conn->close();
?>
