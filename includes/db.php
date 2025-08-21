<?php
include 'config.php';
$conn = new mysqli('localhost', 'root', '', 'health_planner');

if ($conn->connect_error) {
    die("❌ Connection failed: " . $conn->connect_error);
}

?>
