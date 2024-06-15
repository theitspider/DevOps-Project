<?php
    $con = mysqli_connect("localhost", "root", "", "MostafaDB");
    if($con == false) {
        die("Connection Error". mysqli_connect_error());
    }
?>