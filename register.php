<?php
header('Content-Type: application/json');
include('db_config.php');

$data = json_decode(file_get_contents('php://input'), true);

if (isset($data['email']) && isset($data['password'])) {
    $name = $data['name'];
    $email = $data['email'];
    $password = $data['password'];
    $role = 'User';


    // Check if the email is already registered
    $checkQuery = "SELECT * FROM users WHERE email = '$email'";
    $checkResult = $link->query($checkQuery);

    if ($checkResult->num_rows > 0) {
        // Username already exists
        $response = array('status' => 'error', 'message' => 'Username already registered');
    } else {
        // Insert new user into the database
        $insertQuery = "INSERT INTO users (name, email, password, role) VALUES ('$name','$email', sha1('$password'), '$role')";
        if ($link->query($insertQuery) === TRUE) {
            // Registration successful
            $response = array('status' => 'success', 'message' => 'Registration successful');
        } else {
            // Registration failed
            $response = array('status' => 'error', 'message' => 'Registration failed');
        }
    }
} else {
    // Invalid request
    $response = array('status' => 'error', 'message' => 'Invalid request');
}

echo json_encode($response);
$link->close();
?>
