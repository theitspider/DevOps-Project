<?php
    $con = mysqli_connect("localhost", "root", "", "dbname");
    if($con == false) {
        die("Connection Error". mysqli_connect_error());
    }
?>