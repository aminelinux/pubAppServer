<?php 

    $connection = new mysqli("localhost","root","","publication");
    $data       = mysqli_query($connection, "select * from video");
    $data       = mysqli_fetch_all($data, MYSQLI_ASSOC);

    echo json_encode($data);
?>