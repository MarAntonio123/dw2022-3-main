// ⚡⚡ CONCEPTOS
// EJECUCIONES SINCRONAS Y ASINCRONAS


// setInterval(() => {
//     console.log('esta es una ejecucion asincrona');
// }, 3000);

let num2 = 546854.315;
let num1 = 10;
console.log(num2);
console.log(num1);

function suma(a, b){
    console.log(a + b);
}

suma(2, 5);

// ⚡⚡ JSON -> JAVASCRIPT OBJECT NOTATION ⚡⚡

// fetch("data/personas.json").then(respuesta => {
//     console.log(respuesta.json());
// });

fetch("https://api.discogs.com/database/search?q=Nirvana&token=OsfLxGxlYoCfJHGwQpoPBzIrnbHyFaHIpoycqIwL").then(res => {
    console.log(res.json());
});