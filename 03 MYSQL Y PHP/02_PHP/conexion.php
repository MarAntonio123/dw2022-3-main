<?php
$conexion=mysqli_connect('localhost','root','','dw2022_4');
// if($conexion){
//     echo "la conexion fue exitosa";
// }
if(!$conexion){
    die("Fallo en la conexion". mysqli_error($conexion));
}
?>