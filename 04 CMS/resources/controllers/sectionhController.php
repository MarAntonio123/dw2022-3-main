<?php
    /* ⚡⚡ FRONT ⚡⚡ */
    function sectionHead_show_front(){
        $query = query("SELECT * FROM sectionh");
        confirmar($query);
        return fetch_array($query);
    }

    /* ⚡⚡ BACK ⚡⚡ */
    function sectionHead_add(){
        if(isset($_POST['guardar'])){
            $sh_titulo_top = limpiar_string(trim($_POST['sh_titulo_top']));
            $sh_titulo = limpiar_string(trim($_POST['sh_titulo']));
            $sh_descri = limpiar_string(trim($_POST['sh_descri']));
            $sh_telefono = limpiar_string(trim($_POST['sh_telefono']));
            
            $sh_img = $_FILES['sh_img']['name'];
            $sh_img_tmp = $_FILES['sh_img']['tmp_name'];
            
            move_uploaded_file($sh_img_tmp, "../img/{$sh_img}");

            $query = query("INSERT INTO sectionh (sh_titulo_top, sh_titulo, sh_descri, sh_img, sh_telefono) VALUES ('{$sh_titulo_top}', '{$sh_titulo}', '{$sh_descri}', '{$sh_img}', '{$sh_telefono}')");
            confirmar($query);
            set_mensaje(display_alert_msj("Encabezado agregado correctamente ✌✌", "success"));
            redirect("index.php?sectionh");
        }
    }

    function get_sectionh_back(){
        $query = query("SELECT * FROM sectionh");
        confirmar($query);
        return fetch_array($query);
    }

    function post_sectionh_edit($imgAnterior){
        if(isset($_POST['editar'])){
            $sh_titulo_top = limpiar_string(trim($_POST['sh_titulo_top']));
            $sh_titulo = limpiar_string(trim($_POST['sh_titulo']));
            $sh_descri = limpiar_string(trim($_POST['sh_descri']));
            $sh_telefono = limpiar_string(trim($_POST['sh_telefono']));
            
            $sh_img = $_FILES['sh_img']['name'];
            $sh_img_tmp = $_FILES['sh_img']['tmp_name'];

            if(empty($sh_img)){
                $sh_img = $imgAnterior;
            } else {
                $imgLocation = "../img/{$imgAnterior}";
                unlink($imgLocation);
                $sh_img = md5(uniqid()) . "." . explode(".", $sh_img)[1];
                move_uploaded_file($sh_img_tmp, "../img/{$sh_img}");
            }
            $query = query("UPDATE sectionh SET sh_titulo_top = '{$sh_titulo_top}', sh_titulo = '{$sh_titulo}', sh_descri = '{$sh_descri}', sh_img = '{$sh_img}', sh_telefono = '{$sh_telefono}'");
            confirmar($query);
            set_mensaje(display_alert_msj("Los datos se actualizaron correctamente ✌✌", "success"));
            redirect("index.php?sectionh");
        }
    }

    function show_add_or_edit(){
        $query = query("SELECT * FROM sectionh");
        confirmar($query);
        return contar_filas($query);
    }
?>