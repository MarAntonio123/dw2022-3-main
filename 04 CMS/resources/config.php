<?php
    ob_start();
    session_start();


    defined("DS") ? null : define("DS", DIRECTORY_SEPARATOR);
    
    // echo DIRECTORY_SEPARATOR;
    // echo __DIR__;
    /* ⚡⚡ DECLARAR RUTAS RELATIVAS ⚡⚡ */
    defined("VIEW_FRONT") ? null : define("VIEW_FRONT", __DIR__ . DS . "views/front");
    defined("VIEW_BACK") ? null : define("VIEW_BACK", __DIR__ . DS . "views/back"); 

    // ⚡⚡ DATABASE CONEXION
    defined("DB_HOST") ? null : define("DB_HOST", "localhost");
    defined("DB_USER") ? null : define("DB_USER", "root");
    defined("DB_PASS") ? null : define("DB_PASS", "");
    defined("DB_NAME") ? null : define("DB_NAME", "soporte");

    $conexion = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
    // if($conexion){
    //     echo "Conexion exitosa";
    // }
    require_once("caller.php");

?>