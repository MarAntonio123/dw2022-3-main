// const tareaInput = document.querySelector('input');
const tareaInput = document.querySelector('.tarea');
const btn = document.querySelector('button');
const alerta = document.querySelector('.alerta');
const ul = document.querySelector('ul');

// btn.addEventListener('click', function(){
//     console.log('hiciste click');
// })

btn.addEventListener('click', () => {
    // console.log('hiciste click');
    // console.log(tareaInput.value);
    if(tareaInput.value === ''){
        alerta.innerHTML = 'Debes ingresar una tarea 💥💥';
    } else {
        alerta.innerHTML = '';
        const li = `<li>${tareaInput.value}</li>`;
        ul.insertAdjacentHTML('beforeend', li);
        tareaInput.value = '';
    }
});

// const listaTareas = document.querySelectorAll('li');
// console.log(listaTareas);
// for(let i = 0; i < listaTareas.length; i++){
//     // console.log(listaTareas[i]);
//     listaTareas[i].addEventListener('click', () => {
//         console.log('hiciste clik');
//     });
// }

// listaTareas.forEach(el => {
//     el.addEventListener('click', () => {
//         // console.log('hiciste click');
//         el.remove();
//     })
// })

ul.addEventListener('click', evento => {
    // console.log(evento);
    if(evento.target.tagName === 'LI'){
        // console.log('hiciste click en un LI');
        // NOTA lanzar el popup de aviso
        evento.target.remove();
    } 
    // else {
    //     console.log('hiciste click en el UL');
    // }
});