/* ⚡⚡ CONDICIONALES Y BOOLEANOS ⚡⚡ */
// TRUE || FALSE

/*
    💡💡 OPERADORES DE COMPARACION
    asignacion -> =
    IGUALDAD SIMPLE -> == 🔥🔥 HOISTING
    IGUALDAD STRICTA -> ===
    <, <=, >, >=
    DIFERENCIA SIMPLE -> !=
    DIFERENCIA STRICTA -> !==
*/

let condicion = false;

if (condicion) {
  console.log("se ejecuta si es verdadero");
} else {
  console.log("se ejecuta si la condicion es falsa");
}

let num = "23";

if (num === 23) {
  console.log("son iguales");
} else {
  console.log("son diferentes");
}


num === 23 ? console.log('son iguales') : console.log('son diferentes');
if (+num > 10) {
  console.log("El numero es mayor a 10");
}

// 💡💡 EJECUCION SINCRONA
// ⚡⚡ WHILE
let nombres = ["Juan", "Maria", "Esteban", "Jose", "Carlos", "Sofia"];
let i = 0;
let lista = '';
while (i < nombres.length) {
    console.log(nombres[i]);
    lista += `<h3>${nombres[i]}</h3>`
    i++;
}
console.log(lista);
const bloque = document.querySelector('div');
bloque.innerHTML = lista;
