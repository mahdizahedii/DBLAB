<?php
include "server.php";
if (isset($_POST['search'])) {
    $valuetosearch = $_POST['valuetosearch'];
    $query = "SELECT * FROM `car` WHERE CONCAT(`brand`,`model`,`color`,`typelabel`) LIKE'%" . $valuetosearch . "%'";
    $search_result = filterTable($query);
} else {
    $query = "SELECT * FROM `car`";
    $search_result = filterTable($query);
}
function filterTable($query)
{
    $con = new mysqli('localhost', 'root', '', 'rental');
    $filter_Result = mysqli_query($con, $query);
    return  $filter_Result;
}

?>