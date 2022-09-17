
/* ⚡⚡ FUNCIONES ⚡⚡ */
/*
    UNA TAREA - HALGO QUE SE DEBE REALIZAR CUANDO SE LO INDIQUE
    UNA ORDEN
    INTERNAMENTE TENEMOS PROCESOS - OPERACIONES
*/

// var num = 1; // 0x046543513244

const bloque = document.querySelector('.bloque1');

// saludar();

function saludar(){ // 0x75457ashbdvsa54134
    // EL CODIGO VA AQUI 💡💡
    console.log('hola a todos');
    bloque.innerHTML = 'Hola a todos';
}

// saludar();

/* 💥💥 SCOPE - ALCANCE, AMBITO DE EJECUCIÓN */

// VARIABLES GLOBALES
// const num = 100;
const num1 = 200;
// const num2 = 300;

function sumar(){
    // SE CREA UN SCOPE, UN AMBITO, UN ALCANCE - COMO UNA BURBUJA
    const num = 10;
    // const num1 = 20;
    // const num2 = 30;
    console.log(num, num1);
}

sumar();
// console.log(num, num1, num2);

// 💡💡 PARAMETROS Y ARGUMENTOS

const fechaNacimiento = 1999;

function obtenerEdad(fechaNacimiento){
    let edad = 2022 - fechaNacimiento;
    console.log(`mi edad es ${edad} años`);
}

obtenerEdad(fechaNacimiento);

function restar(a, b){
    // console.log(a - b);
    const resultado = a - b;
    const res2 = a + b;
    // return a - b;
    // 💥💥 return resultado, res2; 
    return [resultado, res2];
}

restar(10, 2); // 8

const resultado = restar(10, 2);
console.log(restar(5,4));
// console.log(resultado);

// const personajes = ['joshi', 'mario', 'Ryo', 'Vega', 'chun-li'];

// personajes.forEach(function(_, i){
//     console.log(i);
// })