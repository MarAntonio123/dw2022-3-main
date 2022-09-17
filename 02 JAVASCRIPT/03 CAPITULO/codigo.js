const btn = document.querySelector('button');
const popupCaja = document.querySelector('.popup-caja');
// console.log(popupCaja);
const btnClose = document.querySelector('.popup-close');

btn.addEventListener('click', () => {
    // console.log('funciona');
    popupCaja.classList.add('mostrarCaja');
});

btnClose.addEventListener('click', function(){
    popupCaja.classList.remove('mostrarCaja');
});

popupCaja.addEventListener('click', e => {
    // console.log(e);
    if(e.target.classList.contains('popup-caja')){
        // console.log('hiciste click correcto');
        popupCaja.classList.remove('mostrarCaja');
    }
});

window.addEventListener('keyup', e => {
    // console.log(e);
    if(e.key === 'Escape'){
        // console.log('hiciste click en esc');
        popupCaja.classList.remove('mostrarCaja');
    }
});