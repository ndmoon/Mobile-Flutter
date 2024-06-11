<?php
include_once 'dbconnect.php';

if(isset($POST["id"])){
$id = $POST["id"];
}else return;

$query = "DELETE FROM user WHERE id = '$id'";
$execute = mysqli_query($conn, $query);
$arruser = [];

if($execute){
$arruser["success"]="true";
}else{
$arruser["success"]="false";
}

print(json_encode($arruser));

?>