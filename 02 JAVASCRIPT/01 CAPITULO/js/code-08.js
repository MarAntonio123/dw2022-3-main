/* ⚡⚡ OBJETOS ⚡⚡ */
/*
    objeto = es un elemento donde podemos observar caracteristicas y propiedades
    ejem: Carro => modelo, color, tamaño, año de fabricacion, marca, etc
*/

const carro = {
    // caracteristicas y propiedades
    // key - value pair
    modelo: 'Yaris',
    marca: 'Toyota',
    color: 'Blanco',
    fechaFabri: 2019,
    horsesForce: 14,
    operativo: true,
    accesorios: ['parabrisas', 'gata', 'llanta de repuesto'],
    soat: {
        año: 2022,
        fechaVen: 2023,
        empresa: 'Pacifico'
    }
}

// console.log(carro);
// console.log(carro.modelo);
// console.log(carro.fechaFabri);
// console.log(carro.accesorios[1]);
// console.log(carro.soat.fechaVen);

carro.trasmision = 'automático';
// // DOM => DOCUMENT OBJECT MODEL
// window.addEventListener()
console.log('**********************');
const usuario = {
    nombre: 'Ryo',
    correo: 'ryo@capcom.com',
    cel: '963852147',
    edad: 31,
    // 💡💡 METODOS => son funciones dentro de un objeto
    saludar: function(){
        console.log(`buenos días ${this.nombre}`);
    },
    obtenerEdad: function(fechaNac){
        return 2022 - fechaNac;
    },
    suma: () => {
        console.log('sumaste algo');
    }
}

// console.log(usuario.nombre);
usuario.saludar();
// usuario.obtenerEdad(1999);
// const edad = usuario.obtenerEdad(1999);
// console.log(edad);
// usuario.suma();
const bloque = document.querySelector('.bloque1');

const personaje = {
    nombre: 'Joshi',
    correo: 'joshi@nintendo.com',
    skills: ['saltar', 'comer tortugas', 'sacar la lengua', 'correr'],
    imprimirNombre: function(){
        console.log(`hola, mi nombre es: ${this.nombre}`);
    },
    imprimirSkills: function(){
        let plantilla = '';
        // this.skills.forEach(function(el){
        //     plantilla += `<h2>${el}</h2>`;
        // });
        this.skills.forEach(el => {
            plantilla += `<h2>${el}</h2>`;
        });
        bloque.innerHTML = plantilla;

    },
    // 💥💥 THIS NO FUNCIONA DENTRO DE ARROW FUNCTIONS
    saludar: () => {
        console.log(`Hola, mi nombre es: ${this.nombre}`);
    }

}

console.log(personaje);
personaje.imprimirNombre();

// 💡💡 THIS -> hace referencia al objeto donde se este ejecuntado o llamando
//console.log(this); // objeto global -> window

personaje.imprimirSkills();
personaje.saludar();