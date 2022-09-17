/* ⚡⚡ FUNCIONES DE EXPRESION */

// saludar();

// function saludar(){
//     console.log('hola a todos');
// }

// saludar();

const saludar2 = function(nombre){
    // console.log(`Hola ${nombre}`);
    return `Hola ${nombre}`;
}
const saludoRes = saludar2('Juan');

const bloque = document.querySelector('.bloque1');
bloque.innerHTML = saludoRes;

const suma = function(a, b){
    return a + b;
}

const resSuma = suma(5646, 12);
console.log(resSuma);

/* ⚡⚡ ARROW FUNCTIONS */

const llamar = () => {
    console.log('Constesta el telefono por favor');
}

llamar();

// const llamadaDeAtencion = (culpable) => {
//     console.log(`${culpable} estas castigado(a)`);
// }

// const llamadaDeAtencion = culpable => {
//     console.log(`${culpable} estas castigado(a)`);
// }

// const llamadaDeAtencion = culpable => {
//     return `${culpable} estas castigado(a)`;
// }

const llamadaDeAtencion = culpable => `${culpable} estas castigado(a)`;


const respAtencion = llamadaDeAtencion('Carolina');
console.log(respAtencion);

/*
    const multi = (a, b) => {
        return a * b;
    }
*/

const multi = (a, b) => a * b;
console.log(multi(10, 2));