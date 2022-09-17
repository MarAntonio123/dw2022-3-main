<?php include 'conexion.php'?>
<?php  ob_start();     ?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>APP CRUD</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.1/css/bootstrap.min.css" integrity="sha512-T584yQ/tdRR5QwOpfvDfVQUidzfgc2339Lc8uBDtcp/wYu80d7jwBgAxbyMh0a9YM9F8N3tdErpFI8iaGx6x5g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <h1 class="text-center pt-5 pb-5 bg-primary text-white">Bienbenidos(as) a policonic</h1>
    <section class="container">
        <div class="row p-4">
            <a href="./" class="btn btn-info ml-2">Regresar</a>
        </div>
        <div class="row justify-content-center">
            <h4 class="text-center col-md-12">
                Ingresa los datos de los Directores
            </h4>
            <!--METODOS DE PETICIONES AL SERVIDOR -> POST-GET--> 
            <form action="" class="col-md-6 mt-4" method="post">
                <div class="form-group">
                    <label for="dire_nombres">Nombre del Director</label>
                    <input type="text" class="form-control" id="dire_nombres" name="dire_nombres" required>
                </div>
                <div class="form-group">
                    <label for="dire_apellidos">Apellido </label>
                    <input type="text" class="form-control" id="dire_apellidos" name="dire_apellidos">
                </div>
                <div class="form-group">
                    <label for="dire_img">Imagen del Director</label>
                    <input type="text" class="form-control" id="dire_img" name="dire_img">
                </div>
                <div class="form-group">
                    <label for="dire_pais">Pais del director</label>
                    <input type="text" class="form-control" id="dire_pais" name="dire_pais">
                </div>
                    <div class="form-group">
                        <input type="submit" value="guardardire" class="btn btn-primary" name="guardardire">
                    </div>
            </form>
            <?php
                if(isset($_POST['guardardire'])){

                    $dire_nombres   = $_POST['dire_nombres'];
                    $dire_apellidos = $_POST['dire_apellidos'];
                    $dire_img       = $_POST['dire_img'];
                    $dire_pais      = $_POST['dire_pais'];
                    $query = "INSERT INTO directores(dire_nombres,dire_apellidos,dire_img,dire_pais)
                    VALUES ('{$dire_nombres}','{$dire_apellidos}','{$dire_img}','{$dire_pais}')";
                    mysqli_query($conexion,$query);
                    header("Location: ./directores.php");
                    
                }

            ?>
        </div>   
    </section>
</body>
</html>