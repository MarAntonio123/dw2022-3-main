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
                Ingresa los datos de la pelicula
            </h4>
            <!--METODOS DE PETICIONES AL SERVIDOR -> POST-GET--> 
            <form action="" class="col-md-6 mt-4" method="post">
                <div class="form-group">
                    <label for="peli_nombre">Nombre de la pelicula</label>
                    <input type="text" class="form-control" id="peli_nombre" name="peli_nombre" required>
                </div>
                <div class="form-group">
                    <label for="peli_genero">Genero</label>
                    <input type="text" class="form-control" id="peli_genero" name="peli_genero">
                </div>
                <div class="form-group">
                    <label for="peli_fecha_estreno">Fecha de estreno</label>
                    <input type="date" class="form-control" id="peli_fecha_estreno" name="peli_fecha_estreno">
                </div>
                <div class="form-group">
                    <label for="peli_restricciones">Restricciones</label>
                    <input type="text" class="form-control" id="peli_restricciones" name="peli_restricciones">
                </div>
                <div class="form-group">
                    <label for="peli_img">Imagen desde internet</label>
                    <input type="text" class="form-control" id="peli_img" name="peli_img">
                </div>

                <div class="form-group">
                    <label for="peli_dire_id">Director</label>
                    <select name="peli_dire_id" id="peli_dire_id" class="form-control">
                            <!-- <option value="1">Sam Raimi</option>
                            <option value="2">James Cameron</option> -->
                            <?php
                                $query = "SELECT * FROM directores";
                                $query_res = mysqli_query($conexion, $query);
                                while($fila=mysqli_fetch_array($query_res)){
                                echo "<option value='{$fila["dire_id"]}'>{$fila['dire_nombres']} {$fila['dire_apellidos']}</option>";
                                }

                            ?>
                    </select>
                </div>
                    <div class="form-group">
                        <input type="submit" value="guardar" class="btn btn-primary" name="guardar">
                    </div>
            </form>
            <?php
                if(isset($_POST['guardar'])){

                    $peli_nombre = $_POST['peli_nombre'];
                    $peli_genero = $_POST['peli_genero'];
                    $peli_fecha_estreno = $_POST['peli_fecha_estreno'];
                    $peli_restricciones = $_POST['peli_restricciones'];
                    $peli_img = $_POST['peli_img'];
                    $peli_dire_id = $_POST['peli_dire_id'];
                    $query = "INSERT INTO peliculas(peli_nombre,peli_genero,peli_fecha_estreno,peli_restricciones,peli_img,peli_dire_id)
                    VALUES ('{$peli_nombre}','{$peli_genero}','{$peli_fecha_estreno}','{$peli_restricciones}','{$peli_img}','{$peli_dire_id}')";
                    mysqli_query($conexion,$query);
                    header("Location: ./");
                }

            ?>
        </div>   
    </section>
</body>
</html>