<?php
    $conexion = mysqli_connect('localhost', 'root', '', 'soporte');
    mysqli_set_charset($conexion, "utf8");

    function query($sql){
        global $conexion;
        return mysqli_query($conexion, $sql);
    }
?>