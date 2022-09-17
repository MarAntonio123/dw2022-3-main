<?php
    require_once("db_con.php");
    try{
        $query = query("SELECT * FROM roles");
        $res = mysqli_fetch_all($query, MYSQLI_ASSOC);
        $jsonResp = json_encode(['resultado' => $res]);
        echo $jsonResp;
    } catch(Exception $e){
        error_log($e->getMessage());
        echo json_encode($e->getMessage());
    }
?>