<?php
include_once 'dbconnect.php';


if ($_SERVER["REQUEST_METHOD"] == "POST") {
  
    $username = mysqli_real_escape_string($conn, $_POST["username"]);
    $password = mysqli_real_escape_string($conn, $_POST["password"]);
    $email = mysqli_real_escape_string($conn, $_POST["email"]);
    $address = mysqli_real_escape_string($conn, $_POST["address"]);
    $images = mysqli_real_escape_string($conn, $_POST["images"]);

    $query = "INSERT INTO user (username, password, email, address) VALUES ('$username', '$password', '$email', '$address', '$images')";

    $execute = mysqli_query($conn, $query);

    if ($execute) {
        echo "Data User Baru Berhasil Disimpan";
    } else {
        echo "Data User Baru gagal disimpan";
    }

    $conn->close();
}
?>