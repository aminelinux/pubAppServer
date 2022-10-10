<?php 

    $connection = new mysqli("localhost","root","","publication");
    $data       = mysqli_query($connection, "select pub from diapo where id_diapo = 2");
    $data       = mysqli_fetch_all($data, MYSQLI_ASSOC);

    echo json_encode($data);
?>