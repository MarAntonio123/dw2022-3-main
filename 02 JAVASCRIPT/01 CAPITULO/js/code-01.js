/* ⚡⚡ TIPOS DE DATOS ⚡⚡ */
/* 🔥🔥 VALORES
    STRINGS
    NUMBERS
    BOOLEANS
    OBJETOS
*/

/* 🔥🔥 STRINGS 🔥🔥 */
/*
    CARACTERES
    TEXTO
    CADENAS DE TEXTO
    juan, bandera, lenguaje, casa3, num3
*/

// ES5
// var
// var nombre = eduardo; 💥💥
// var nombre = 'Eduardo';

// v > ES5
// let & const
// let nom = 'Eduardo';
// console.log(nom);
// nom = 'Eduardo Arroyo';
// console.log(nom);
// // console.log(typeof(nom));
// const nom2 = 'Miguel';
// console.log(nom2);
// nom2 = 'Miguel Casas';
// const dniEduardo = '12345678';
// let dniConvert = Number(dniEduardo);
// let dniConvert = +dniEduardo;
// let dniConvert = parseInt(dniEduardo);
let nombre = 'Juan';
let apellido = 'Smith';

// ⚡⚡ CONCATENAR STRINGS
let fullName = nombre + " " + apellido;
console.log(fullName);
// console.log(nombre, apellido);

// ⚡⚡ PROPIEDADES => (esto solo sucede en objetos)
// STRINGS => js lo maneja como un "tipo de objeto".

console.log(fullName.length);
console.log('hola'.length);

// ⚡⚡ INDICES 
// POR NATURALEZA SE TRABAJA EN ARRAYS E INICIA EN EL INDICE 0
console.log(nombre[0]);
console.log(nombre[3]);
console.log(apellido[4]);

let nombre2 = 'este_es_un_nombre_demasiado_largo';
console.log(nombre2[nombre2.length - 1]);

// OJO array slice, join, 

// jsmith@continental.edu.pe

let correo = nombre[0] + apellido + '@continental.edu.pe';
console.log(correo);

// ⚡⚡ METODOS
console.log(correo.toLowerCase());
console.log(correo.toUpperCase());