<?php
    function query($consulta){
        global $conexion;
        return mysqli_query($conexion, $consulta);
    }

    function fetch_array($query){
        return mysqli_fetch_array($query);
    }
    // validar si la consulta esta bien hecha
    function confirmar($query){
        global $conexion;
        if(!$query){
            die("Fallo en la conexión " . mysqli_error($conexion));
        }
    }

    function limpiar_string($str){
        global $conexion;
        return mysqli_real_escape_string($conexion, $str);
    }

    function redirect($location){
        header("Location: $location");
    }

    function set_mensaje($msj){
        if(!empty($msj)){
            $_SESSION['mensaje'] = $msj;
        } else {
            $msj = '';
        }
    }

    function mostrar_msj(){
        if(isset($_SESSION['mensaje'])){
            echo $_SESSION['mensaje'];
            unset($_SESSION['mensaje']);
        }
    }

    function contar_filas($query){
        return mysqli_num_rows($query);
    }

    function display_alert_msj($msj, $tipo){
        $msj = <<<DELIMITADOR
            <div class="alert alert-{$tipo} alert-dismissible fade show" role="alert">
                <strong>Holy guacamole!</strong> $msj
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
            </div>
DELIMITADOR;
        return $msj;
    }

    function email_existe($email){
        $query = query("SELECT * FROM usuarios WHERE user_email = '{$email}'");
        confirmar($query);
        if(contar_filas($query) == 1){
            return true;
        }
        return false;
    }
?>