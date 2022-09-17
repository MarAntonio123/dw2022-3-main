    <?php $fila = sectionHead_show_front(); ?>

    <section class="sectionHead contenedor-max centrar-bloque" id="home">
        <aside class="sectionHead__aside">
            <img src="img/itservice6-slider-pic2.svg" alt="logo slider" class="sectionHead__aside--img">
            <section class="sectionHead__aside__col">
                <p class="sectionHead__aside__col--exp">
                    <?php echo $fila['sh_titulo_top']; ?>
                </p>
                <h1 class="mt-3">
                    <?php echo $fila['sh_titulo']; ?>
                </h1>
                <p class="sectionHead__aside__col--descri mt-3">
                    <?php echo $fila['sh_descri']; ?>
                </p>
                <a href="" class="btn btn-base mt-6">
                    Leer más <i class="fa-solid fa-right-long"></i>
                </a>
            </section>
        </aside>
        <article class="sectionHead__article">
            <img src="img/<?php echo $fila['sh_img']; ?>" alt="soporte">
            <p class="sectionHead__article--soporte">
                <span>Soporte 24/7</span>
                <span>+51 <?php echo $fila['sh_telefono']; ?></span>
            </p>
            <div class="sectionHead__article__caja">
                <p class="sectionHead__article__caja--apple">
                    <i class="fa-brands fa-apple"></i>
                    <span>Damos soporte apple</span>
                </p>
                <p class="sectionHead__article__caja--time">
                    <i class="fa-solid fa-stopwatch"></i>
                    <span>Completado en 24 horas</span>
                </p>
            </div>
        </article>
    </section>