console.log("funciona");
//EJERCICIO 1
const mayuscula=document.querySelector('.mayuscula');
let palabra ='juan';
mayuscula.innerHTML=palabra.toUpperCase();

const minuscula=document.querySelector('.minuscula');
let palabra1='JUAN';
minuscula.innerHTML=palabra1.toLowerCase();


//EJERCICIO 2

let num=1;
let num2=6;
const sumar=document.querySelector('.sumar');
function suma(){
    let resultado=num+num2;
    sumar.innerHTML=`<h1>La suma es :${resultado}<h1>`;
}
suma();

const sumadenumeros=document.querySelector('.sumandos')
function sum(x,y){
    let result=x+y;
    sumadenumeros.innerHTML=`<h2>La suma es :${result}<h2>`;
}
sum(8,9);


//ejercicio 3
let plant='';
const nombres=['Juan','Pedro','Pablo','Elvis','Carlos','Raul','Delia','Carla','Karen','Teresa'];
const mostrar=document.querySelector('.MostrarNombres');
for(let contador=0 ;contador < nombres.length ;contador++){
   plant+=`<h2>${nombres[contador]}</h2>`;
}
mostrar.innerHTML=plant;

//ejercicio 4

let bloquesito='';
const mostrarpeliculas=document.querySelector('.mostrarP'); 
const peliculas=['Viernes 13 - Jason','Shuek','Soy Leyenda','La mascara','Pokemon','La Monja','El Pantano','Tren a Busan','Son como Niños','Nunca Digas su Nombre'];
const  index=peliculas.findIndex(function(pelicula){
   return pelicula==='Viernes 13 - jason'; 
});
console.log("el indice de viernes es: "+index);

peliculas.forEach(function(pelicula,index){
    if(index == 0){
        bloquesito += `<a href="https://www.netflix.com/mf-es/title/70104894"><h2>${pelicula}</h2><a>`;
    }
    else if(index == 1){
        bloquesito += `<a href="https://www.netflix.com/pe/title/60020686"><h2>${pelicula}</h2><a>`;
    }
    else if(index == 2){
        bloquesito += `<a href="https://www.netflix.com/mq-es/title/70060015"><h2>${pelicula}</h2><a>`;
    }
    else if(index == 3){
        bloquesito += `<a href="https://www.netflix.com/pe/title/70027007"><h2>${pelicula}</h2><a>`;
    }
    else if(index == 4){
        bloquesito += `<a href="https://www.netflix.com/pe/title/81193140"><h2>${pelicula}</h2><a>`;
    }
    else if(index == 5){
        bloquesito += `<a href="https://www.netflix.com/pe/title/70058026"><h2>${pelicula}</h2><a>`;
    }
    else if(index == 6){
        bloquesito += `<a href="https://www.netflix.com/pe/title/81221644"><h2>${pelicula}</h2><a>`;
    }
    else if(index == 7){
        bloquesito += `<a href="https://www.netflix.com/pe/title/80117824"><h2>${pelicula}</h2><a>`;
    }
    else if(index == 8){
        bloquesito += `<a href="https://www.netflix.com/pe/title/70125231"><h2>${pelicula}</h2><a>`;
    }
    else {
        bloquesito += `<a href="https://www.netflix.com/us-es/title/80103336"><h2>${pelicula}</h2><a>`;
    }

});
mostrarpeliculas.innerHTML = `<h1>Lista de peliculas</h1>${bloquesito}`;


const MostrarCines=document.querySelector('.MostrarC');
const cine = {
    nombre : 'CinePlanet',
    ciudad : 'Lima',
    costodefuncion:'Direccion',
    direccion:'AV.Miraflores',
    //METODO
    mostrardatos: function(){
        let planti = '';
        for(const propiedad in cine){
            //validacion de investigacion
            if(propiedad != "mostrardatos"){
            planti +=`<h1>${propiedad} : ${cine[propiedad]}</h1>`;
            }
        } 
        MostrarCines.innerHTML=`<h1>Lista de propiedades del metodo cine</h1>${planti}`;     
   }   
}
console.log(cine);
// console.log(Object.values(cine));
cine.mostrardatos();




//EJERCICIO 5
const cambiarcolores=document.querySelector('.texto');
let  colorpicker=document.querySelector('.colorpicker');
setInterval(() => {
    let color = colorpicker.value;
    cambiarcolores.style.backgroundColor = color;
    
}, 200);






