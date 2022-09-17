<?php
    function validar_user_reg(){
        $min = 3;
        $max = 10;
        $errores = [];

        if(isset($_POST['registro'])){
            $user_nombres = limpiar_string(trim($_POST['user_nombres']));
            $user_apellidos = limpiar_string(trim($_POST['user_apellidos']));
            $user_email = limpiar_string(trim($_POST['user_email']));
            $user_rol = limpiar_string(trim($_POST['user_rol']));
            $user_pass = limpiar_string(trim($_POST['user_pass']));
            $user_pass_confirm = limpiar_string(trim($_POST['user_pass_confirm']));

            if(strlen($user_nombres) < $min){
                $errores[] = "Tus nombres no deben tener menos de {$min} caracteres";
            }
            if(strlen($user_nombres) > $max){
                $errores[] = "Tus nombres no deben tener mas de {$max} caracteres";
            }
            if(strlen($user_apellidos) < $min){
                $errores[] = "Tus apellidos no deben tener menos de {$min} caracteres";
            }
            if(strlen($user_apellidos) > $max){
                $errores[] = "Tus apellidos no deben tener mas de {$max} caracteres";
            }
            if(email_existe($user_email)){
                $errores[] = "El correo ya se encuentra registrado";
            }
            if($user_pass != $user_pass_confirm){
                $errores[] = "Las contraseñas deben ser iguales";
            }

            // print_r($errores);
            if(!empty($errores)){
                foreach($errores as $error){
                    echo display_alert_msj($error, "danger");
                }
            } else {
                if(registro_usuario($user_nombres, $user_apellidos, $user_email, $user_pass, $user_rol)){
                    set_mensaje(display_alert_msj("Registro satisfactorio. Por favor, revisa tu correo o spam para la activación de tu cuenta. Esto puede tardar unos minutos", "success"));
                    redirect("register.php");
                } else {
                    set_mensaje(display_alert_msj("Lo sentimos, no pudimos registrar tu cuenta. Intentalo más tarde", "danger"));
                    redirect("register.php");
                }
            }

        }
    }

    function registro_usuario($nombres, $apellidos, $email, $pass, $rol){
        $user_nombres = limpiar_string(trim($nombres));
        $user_apellidos = limpiar_string(trim($apellidos));
        $user_email = limpiar_string(trim($email));
        $user_pass = limpiar_string(trim($pass));
        $user_rol = limpiar_string(trim($rol));

        $user_pass = password_hash($user_pass, PASSWORD_BCRYPT, array('cost' => 12));
        $query = query("INSERT INTO usuarios (user_nombres, user_apellidos, user_email, user_pass, user_rol) VALUES ('{$user_nombres}', '{$user_apellidos}', '{$user_email}', '{$user_pass}', {$user_rol})");
        confirmar($query);
        return true;
    }
?>