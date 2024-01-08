<?php

require 'db_config.php';
header('Content-Type: application/json');

json_decode(file_get_contents('php://input'), true);
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $id = $_POST['id'];
    $name = $_POST['name'];
    $htm = $_POST['htm'];
    $tutorial = $_POST['tutorial'];

    // Mengatur query awal untuk mengubah data teks
    $update = "UPDATE recipes SET name='$name', htm='$htm', tutorial='$tutorial'";

    // Jika tidak ada file gambar yang diunggah, tetap perbarui data teks
    if (!empty($_FILES['file']['name'])) {
        $targetDir = "uploads/";
        $fileName = uniqid().'_'.basename($_FILES['file']['name']);
        $targetFilePath = $targetDir . $fileName;

        // Jika file gambar baru diunggah, tambahkan pengubahan data gambar ke dalam query
        if (move_uploaded_file($_FILES['file']['tmp_name'], $targetFilePath)) {
            $update .= ", image='$fileName'";
        }
    }
    $update .= " WHERE id=$id";

    // Menambahkan kondisi WHERE untuk mengupdate resep dengan ID yang sesuai

    if ($link->query($update) === TRUE) {
        echo json_encode(array('message' => 'Recipe updated successfully'));
    } else {
        echo json_encode(array('message' => 'Failed to update recipe'));
    }
}
?>
