/* ⚡⚡ ARRAYS ⚡⚡ */
/*
    CONJUNTO DE ELEMENTOS
    LISTAS
    🔥🔥 SON UN TIPO DE OBJETO DENTRO DE JAVASCRIPT
*/

const numeros = [12, 5468, 654, 56, 5347, 878];
console.log(numeros);
// numeros = [12, 5468, 654, 56, 5347, 878, 45];
// console.log(numeros);
numeros[0] = 15;
console.log(numeros);
numeros[6] = 897864654;
console.log(numeros);
// numeros[-1] = 21354; // elemento mediante un symbol 💥💥 no fiunciona como la logica nos diría de que se ponga como elemento antes del indice cero.
console.log(numeros);
numeros.push(10.2);
console.log(numeros);
numeros.unshift('hola');
console.log(numeros);

const arrayMixto = [1, 'Jaimito', false, {edad: 16}, 20.56, function(){console.log('hola')}];
console.log(arrayMixto);

// ⚡⚡ FOR LOOPS
const personajes = ['joshi', 'mario', 'Ryo', 'Vega', 'chun-li'];

for(let contador = 0; contador < personajes.length; contador++){
    console.log(personajes[contador]);
}

console.log('******************************');

let plantilla = '';
console.log(plantilla);

for(let i = 0; i < personajes.length; i++){
    // console.log(personajes[i]);
    // plantilla = plantilla + personajes[i];
    // plantilla = plantilla + `<h3>${personajes[i]}</h3>`;
    plantilla += `<h3>${personajes[i]}</h3>`;
}
console.log(plantilla);

// const bloque = document.getElementById('bloquesito');
// const bloque = document.getElementsByClassName('bloque1');
// const bloque = document.getElementsByTagName('div');
const bloque = document.querySelector('#bloquesito');
bloque.innerHTML = plantilla;

// ⚡⚡ FOR OF no funciona o tiene soporte en IE
let plantilla2 = '';
for(let personaje of personajes){
    // console.log(personaje);
    plantilla2 += `<h3>${personaje}</h3>`;
}
console.log(plantilla2);
bloque.innerHTML = plantilla2;

console.log('*************************');

// ⚡⚡ FOREACH COMO METODO
personajes.forEach(function(e, i){
    console.log(e, i);
});

let plantilla3 = '';
personajes.forEach(function(el){
    // console.log(el);
    plantilla3 += `<h3>${el}</h3>`;
});

console.log(plantilla3);