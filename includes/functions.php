<?php
    // include the file we just wrote - connect
     // like a JS import statement


     $result = array();

     function getAllUsers($conn) {
         $query = "SELECT car_id, car_name, car_thumbnail, car_image, car_video, car_slogan FROM mini_cars";
 
         $runQuery = $conn->query($query);
 
         while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)) {
             $result[] = $row;
         }
 
         //return $result;
         echo (json_encode($result));
     }
 
     function getSingleUser($conn, $id) {
         $query = "SELECT * FROM mini_cars WHERE car_id=" . $id . "";
 
         $runQuery = $conn->query($query);
 
         while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)) {
             $result[] = $row;
         }
 
         //return $result;
         echo (json_encode($result));
     }