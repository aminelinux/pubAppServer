<?php

    $connection = new mysqli("localhost","root","","publication");

    //get image name
    $texto = $_POST; 

    //create date now
    $date = date('Y-m-d');


    $result = mysqli_query($connection, "insert into text set contenu='$texto', date='$date'");
    
    if($result){
        echo json_encode([
            'message' => 'text input successfully'
        ]);
    }else{
        echo json_encode([
            'message' => 'text Failed to input'
        ]);
    }
?>