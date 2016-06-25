<?php
    $image = "C:fakepath1234567.jpg";
    $path = "C:fakepath";
    if(substr($image, 0, 10) == $path){
        echo substr($image, 10, strlen($image)-1);
    }else{
        echo $image;
    }
?>