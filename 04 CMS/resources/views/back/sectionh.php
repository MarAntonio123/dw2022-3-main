<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">SECTION HEADING</h1>
    </div>
    <div class="row">
        <div class="col-md-12">
            <?php mostrar_msj(); ?>
        </div>
        <?php 
            if(show_add_or_edit() > 0){
                ?>
                    <!-- este bloque es editar -->
                    <div class="col-md-4">
                        <div class="card shadow">
                            <div class="card-header py-3">
                                <h6 class="m-0 text-info font-weight-bold">Editar data</h6>
                            </div>
                            <div class="card-body">
                                <?php $fila = get_sectionh_back(); ?>
                                <form method="POST" enctype="multipart/form-data">
                                    <div class="form-group">
                                        <label for="sh_titulo_top">Título Top</label>
                                        <input type="text" class="form-control" name="sh_titulo_top" id="sh_titulo_top" required value="<?php echo $fila['sh_titulo_top']; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="sh_titulo">Título</label>
                                        <input type="text" class="form-control" name="sh_titulo" id="sh_titulo" required value="<?php echo $fila['sh_titulo']; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="sh_descri">Descripción</label>
                                        <textarea name="sh_descri" id="sh_descri" cols="30" rows="5" class="form-control" required><?php echo $fila['sh_descri']; ?></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="sh_telefono">Teléfono</label>
                                        <input type="text" class="form-control" name="sh_telefono" id="sh_telefono" required value="<?php echo $fila['sh_telefono']; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="sh_img">Imagen</label>
                                        <img src="../img/<?php echo $fila['sh_img']; ?>" alt="" width="100%" style="display: block; margin: 10px 0;">
                                        <input type="file" class="form-control" id="sh_img" name="sh_img">
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" value="Editar" class="btn btn-info btn-small" name="editar">
                                    </div>
                                </form>
                                <?php post_sectionh_edit($fila['sh_img']); ?>
                            </div>
                        </div>
                    </div>
            <?php } else{
                ?>
                    <!-- este bloque es agregar -->
                    <div class="col-md-4">
                        <div class="card shadow">
                            <div class="card-header py-3">
                                <h6 class="m-0 text-primary font-weight-bold">Subir data</h6>
                            </div>
                            <div class="card-body">
                                <form method="POST" enctype="multipart/form-data">
                                    <div class="form-group">
                                        <label for="sh_titulo_top">Título Top</label>
                                        <input type="text" class="form-control" name="sh_titulo_top" id="sh_titulo_top" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="sh_titulo">Título</label>
                                        <input type="text" class="form-control" name="sh_titulo" id="sh_titulo" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="sh_descri">Descripción</label>
                                        <textarea name="sh_descri" id="sh_descri" cols="30" rows="5" class="form-control" required></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="sh_telefono">Teléfono</label>
                                        <input type="text" class="form-control" name="sh_telefono" id="sh_telefono" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="sh_img">Imagen</label>
                                        <input type="file" class="form-control" id="sh_img" name="sh_img" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" value="Guardar" class="btn btn-success btn-small" name="guardar">
                                    </div>
                                </form>
                                <?php sectionHead_add(); ?>
                            </div>
                        </div>
                    </div>
            <?php }
        ?>
    </div>
</div>