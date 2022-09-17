/* ⚡⚡ NUMBERS ⚡⚡ */
let num = 10;
let num2  = '10';
console.log(typeof(num));
console.log(typeof(num2));

// ⚡⚡ OPERACIONES MATEMÁTICAS
const pi = 3.1416;
let radio = 11.5;

let areaCirculo = pi * radio ** 2;
console.log(areaCirculo);

// 💥💥 HOISTING
console.log(num + num2);
console.log(num + parseInt(num2));
console.log(num + Number(num2));
console.log(num + +num2);

// ⚡⚡ RESIDUO
let num3 = 20;
console.log(num3 % 2); // 0
console.log(num3 % 3); // 2
console.log(num3 % 4); // 0
console.log(num3 % 5); // 0
console.log(num3 % 6); // 2
console.log(num3 % 7); // 6

// ⚡⚡ operaciones resumidas
let num4 = 5;
console.log(num4);
num4 = num4 + 1; // 6
console.log(num4);
num4++; // => num4 = num4 + 1; => 7
console.log(num4);
num4--;
console.log(num4) // 6

num4 = num4 + 10;
console.log(num4); // 16
num4 += 2; // => num4 = num4 + 2
console.log(num4); // 18
num4 -= 7; // 11
console.log(num4);
num4 *= 2;
console.log(num4);
num4 /= 2;
console.log(num4);
num4 **= 2;
console.log(num4);

// let arrayNum = [];
// for(let i = 0; i < 10; i++){
//     arrayNum[i] = i + 1;
// }

// console.log(arrayNum);

// ⚡⚡ METODOS
let num5 = 10.5;
console.log(num5);
console.log(num5.toFixed(2));

// ⚡⚡ MATH
//  REDONDEAR
let rep1 = Math.floor(num5);
console.log(rep1);
let rep2 = Math.ceil(num5);
console.log(rep2);
let rep3 = Math.round(num5);
console.log(rep3);

// ⚡⚡ NUMEROS ALEATORIOS
console.log('******************************');
let ale = Math.random(); // 0.0000001 a 0.9999999999 -> lo mas cercano a 1
console.log(ale);
let ale2 = Math.floor(Math.random() * 10) + 1;
console.log(ale2);