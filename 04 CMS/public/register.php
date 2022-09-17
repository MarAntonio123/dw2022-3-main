<?php require_once("../resources/config.php"); ?>
<?php include(VIEW_FRONT . DS . "headUser.php"); ?>

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Crear una cuenta</h1>
                            </div>
                            <?php
                                mostrar_msj();
                                validar_user_reg();
                            ?>
                            <form class="user" method="post">
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" id="exampleFirstName"
                                            placeholder="Nombres" name="user_nombres">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user" id="exampleLastName"
                                            placeholder="Apellidos" name="user_apellidos">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control form-control-user" id="exampleInputEmail"
                                        placeholder="Correo Electrónico" name="user_email">
                                </div>
                                <div class="form-group">
                                    <select name="user_rol" class="form-control rolesSelect">
                                        <option value="" selected disabled>Selecciona un rol</option>
                                        
                                    </select>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="password" class="form-control form-control-user"
                                            id="exampleInputPassword" placeholder="Contraseña" name="user_pass">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="password" class="form-control form-control-user"
                                            id="exampleRepeatPassword" placeholder="Confirmar contraseña" name="user_pass_confirm">
                                    </div>
                                </div>
                                <input type="submit" value="Registrar cuenta" class="btn btn-primary btn-user btn-block" name="registro">
                            </form>
                            
                            <hr>
                            <div class="text-center">
                                <a class="small" href="forgot-password.php">¿Olvidaste tu contraseña?</a>
                            </div>
                            <div class="text-center">
                                <a class="small" href="login.php">¿Ya tienes tu cuenta? Inicia sesión</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
<?php include(VIEW_FRONT . DS . "footerUser.php"); ?>