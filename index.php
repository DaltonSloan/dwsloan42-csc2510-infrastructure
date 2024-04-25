<?php
$servername = "10.142.0.8"; // internal IP of db server
$username = "daltonw_sloan"; // your GCP username.  Remember, convert periods to _
$password = "secure_password";
$database = "devops";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error . ". Please check the server address and credentials.");
} else {
    echo "Connected successfully to the database: $database<br/>";
}

// Attempt to query database table and output data
$query = "SELECT id, name, email, age FROM users";
if ($result = $conn->query($query)) {
    while ($row = $result->fetch_assoc()) {
        echo "ID: " . $row["id"] . " - Name: " . $row["name"] . " - Email: " . $row["email"] .  " - Age: " . $row["age"] . "<br/>";
    }
    $result->free();
} else {
    echo "Error in running query: " . $conn->error;
}

$conn->close();
?>
