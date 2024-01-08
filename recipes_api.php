<?php
require 'db_config.php';
header('Content-Type: application/json');

// Endpoint untuk mendapatkan semua resep
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $result = $link->query('SELECT * FROM recipes');
    $data = array();

    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }

    echo json_encode($data);
}

// Endpoint untuk menambahkan resep baru
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $requestData = json_decode(file_get_contents('php://input'), true);

    $name = $_POST['name'];
    $htm = $_POST['htm'];
    $tutorial = $_POST['tutorial'];

    // Simpan file yang diunggah ke dalam folder uploads
    if (!empty($_FILES['file']['name'])) {
        $targetDir = "uploads/";
        $fileName = uniqid().'_'.basename($_FILES['file']['name']);
        $targetFilePath = $targetDir . $fileName;

        // Upload file
        if (move_uploaded_file($_FILES['file']['tmp_name'], $targetFilePath)) {
            // Simpan informasi nama file ke dalam database
            $insert = "INSERT INTO recipes (name, htm, tutorial, image) VALUES ('$name', '$htm', '$tutorial', '$fileName')";
            if ($link->query($insert) === TRUE) {
                echo json_encode(array('message' => 'Recipe added successfully'));
            } else {
                echo json_encode(array('message' => 'Failed to add recipe'));
            }
        } else {
            echo json_encode(array('message' => 'Error uploading file'));
        }
    } else {
        echo json_encode(array('message' => 'No file uploaded'));
    }
}

// Endpoint untuk mengedit resep



// Endpoint untuk menghapus resep
if ($_SERVER['REQUEST_METHOD'] === 'DELETE') {
    $id = $_GET['id'];

    $delete = "DELETE FROM recipes WHERE id=$id";
    if ($link->query($delete) === TRUE) {
        echo json_encode(array('message' => 'Recipe deleted successfully'));
    } else {
        echo json_encode(array('message' => 'Failed to delete recipe'));
    }
}

$link->close();
?>
