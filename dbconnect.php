<?php
define('DB_HOST','localhost');
define('DB_USER','id21295846_userdata');
define('DB_PASS','Nadiamonika_trpl3b');
define('DB_NAME','id21295846_data');

$conn = new mysqli(DB_HOST,DB_USER,DB_PASS,DB_NAME
    );

if(mysqli_connect_error()){
    echo "Failed to connect to MySQL Server."
	    .mysqli_connect_error();
    die();
}
?>