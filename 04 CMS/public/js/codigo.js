/* ⚡⚡ MENU SCROLL ACTIVE ⚡⚡ */
const menu = document.querySelector('.menu');

window.addEventListener('scroll', function(){
    // console.log('hiciste scroll');
    // console.log(window.pageYOffset);
    // console.log(window.scrollY);
    if(window.scrollY > 0){
        menu.classList.add('active');
    } else {
        menu.classList.remove('active');
    }
});

/* ⚡⚡ ACTIVAR MENU RESPONSIVE ⚡⚡ */
const menuBox = document.querySelector('.menu__contenedor__menuBox');
const menuBtn = document.querySelector('.menu__contenedor__btnBox');

menuBtn.addEventListener('click', function(){
    console.log('hiciste click');
    // menuBox.classList.add('activarMenu');
    menuBox.classList.toggle('activarMenu');
})