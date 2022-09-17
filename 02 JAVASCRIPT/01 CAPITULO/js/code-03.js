/* ⚡⚡ TEMPLATE STRINGS ⚡⚡ */
const nombre = 'Jose';
const apellido = "Perez";
let edad = '32';

const dataFull = 'Hola soy ' + nombre + ' ' + apellido + ' y tengo ' + edad + ' años de edad';
console.log(dataFull);

const dataFull2 = `Hola soy ${nombre} ${apellido} y tengo ${edad} años de edad`;
console.log(dataFull2);

let suma = `${2 + 2}`;
console.log(suma);

let html = `
    <h1>Hola, soy ${nombre} ${apellido}</h1>
    <h2>Tengo ${edad} años de edad</h2>
`;
console.log(html);

// NOTA DOM => DOCUMENT OBJECT MODEL
let bloque1 = document.querySelector('.bloque1');
// console.log(bloque1);
bloque1.innerHTML = html;