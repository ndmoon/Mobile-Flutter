<?php
include_once 'dbconnect.php';
$query = "SELECT id, username, password, email, address, images FROM user";
$execute = mysqli_query($conn, $query );
$arruser=[];
while($rows = mysqli_fetch_array($execute)){
$arruser[]= $rows;
}
print (json_encode($arruser))
?>