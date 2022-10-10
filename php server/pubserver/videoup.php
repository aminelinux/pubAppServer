<?php

    $connection = new mysqli("localhost","root","","publication");

    //get image name
    $video = $_FILES['video']['name']; 

    //create date now
    $date = date('Y-m-d');

    //make image path
    $videoPath = 'videos/'.$video; 

    $tmp_video = $_FILES['video']['tmp_name']; 

    //move image to images folder
    move_uploaded_file($tmp_video, $videoPath);

    $result = mysqli_query($connection, "insert into Video set video='$video', date='$date'");
    
    if($result){
        echo json_encode([
            'message' => 'video input successfully'
        ]);
    }else{
        echo json_encode([
            'message' => 'video Failed to input'
        ]);
    }
?>