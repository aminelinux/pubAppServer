<?php

    $connection = new mysqli("localhost","root","","publication");

    //get image name
    $image = $_FILES['image']['name']; 

    //create date now
    $date = date('Y-m-d');

    //make image path
    $imagePath = 'images/'.$image; 

    $tmp_name = $_FILES['image']['tmp_name']; 

    //move image to images folder
    move_uploaded_file($tmp_name, $imagePath);

    $result = mysqli_query($connection, "insert into Image set image='$image', date='$date'");
    
    if($result){
        echo json_encode([
            'message' => 'image input successfully'
        ]);
    }else{
        echo json_encode([
            'message' => 'image Failed to input'
        ]);
    }
?>