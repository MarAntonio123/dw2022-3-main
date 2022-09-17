<?php require_once("../../resources/config.php"); ?>
<?php include(VIEW_BACK . DS . "head.php"); ?>

        <!-- Sidebar -->
        <?php include(VIEW_BACK . DS . "sidebar.php"); ?>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <?php include(VIEW_BACK . DS . "topbar.php"); ?>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <!-- AQUI VA EL CONTENIDO DE TODO -->
                <?php
                    if(isset($_GET['sectionh'])){
                        include(VIEW_BACK . DS . "sectionh.php");
                    }                
                ?>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <?php include(VIEW_BACK . DS . "footer.php"); ?>