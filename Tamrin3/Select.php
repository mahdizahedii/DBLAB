<?php
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "rental";

$connection = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

mysqli_set_charset($connection,"utf8");

$sql = "SELECT * FROM customer";

$result = mysqli_query($connection,$sql);

if (mysqli_num_rows($result)>0){
    while ($row = mysqli_fetch_assoc($result)) {
        echo "<br>";
        echo "Id:";
        echo $row['id'];
        echo "<br>";
        echo "Name:";
        echo $row['Fname'];
        echo "<br>";
        echo "Fname:";
        echo $row['Lname'];
       
    }

}
