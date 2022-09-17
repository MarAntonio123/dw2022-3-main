<?php include 'conexion.php'?>
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
            <a href="subir.php" class="btn btn-success">Subir Peliculas</a>
            <a href="subirDirectores.php" class="btn btn-success ml-2">Agregar Directores</a>
            <a href="directores.php" class="btn btn-info ml-2">Directores</a>
        </div>
        <div class="row">
            <?php
          $query="SELECT * FROM directores";
          $query_res= mysqli_query($conexion,$query);
            while($fila = mysqli_fetch_array($query_res)){
               
              ?> 
              <div class="col-md-3 mb-4">
                <img src="<?php echo $fila['dire_img'];?>" alt="<?php echo $fila['dire_nombres'];?>" width="100%">
                <h4 class="text-info"><?php echo $fila['dire_nombres'] . " " . $fila['dire_apellidos']; ?></h4>
                <div>
                    <strong>Director: </strong> <?php echo $fila['dire_nombres'];?>
                </div>
                <div>
                    <strong>Pais: </strong><?php echo $fila['dire_pais'];?>
                </div>

                <div class="mt-1">
                    <a href="actualizarDirector.php?id=<?php echo $fila['dire_id'];?>" class="btn btn-success">editar</a>
                    <a href="borrarDirector.php?id=<?php echo $fila['dire_id']?>" class="btn btn-danger">borrar</a>
                </div>
            </div>
        
            <?php }

            ?>
            
            <!-- <div class="col-md-3 mb-4">
                <img src="https://conocedores.com/wp-content/uploads/2022/02/nowayhome-streaming-2702022in1-scaled.webp" alt="spiderman" width="100%">
                <h4 class="text-info">Spiderman - No way a home</h4>
                <div>
                    <strong>Director: </strong> San Raimi
                </div>
                <div>
                    <strong>Rating: </strong> PG-16
                </div>

                <div class="mt-1">
                    <a href="#" class="btn btn-success">editar</a>
                    <a href="#" class="btn btn-danger">borrar</a>
                </div>

            </div> -->
        </div>

    </section>
</body>
</html>