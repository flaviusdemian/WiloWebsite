<?php

// Connection's Parameters
$con=mysqli_connect("localhost","root","","wilo");
// Check connection
if (mysqli_connect_errno())
{
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>