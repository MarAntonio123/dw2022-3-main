<?php 
    include "conexion.php";
    ob_start();
    if(isset($_GET['id'])){
        $id_delete = $_GET['id'];
        $query = "DELETE FROM directores WHERE dire_id = {$id_delete}";
        $query_res = mysqli_query($conexion,$query);
        header("Location: ./");

    }
?>