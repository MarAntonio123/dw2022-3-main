const form = document.querySelector('.quiz-form');
const resultado = document.querySelector('.result');

const resCorrectas = ['A', 'A', 'A', 'A'];

form.addEventListener('submit', e => {
    e.preventDefault();
    // console.log(form.q1.value);
    // console.log(form.q2.value);
    // console.log(form.q3.value);
    // console.log(form.q4.value);

    const respUsuario = [form.q1.value, form.q2.value, form.q3.value, form.q4.value];
    // console.log(respUsuario);
    let puntaje = 0;
    respUsuario.forEach(function(valor, indice){
        // console.log(indice, valor);
        if(valor === resCorrectas[indice]){
            console.log(`la respuesta de la pregunta ${indice + 1} es correcta`);
            puntaje += 25;
        } else {
            console.log(`la respuesta de la pregunta ${indice + 1} es incorrecta 💥💥`);
        }
    });
    // console.log(puntaje);
    resultado.classList.remove('d-none');
    // resultado.querySelector('span').textContent = `${puntaje}%`;
    let posicionEjeY = scrollY; // 311
    // console.log(posicionEjeY);
    let animacionTop = setInterval(function(){
        // console.log('se imprime cada segundo');
        // scrollTo(0, posicionEjeY);
        // posicionEjeY -= 10;
        if(posicionEjeY <= 0){
            clearInterval(animacionTop);
        } else{
            scrollTo(0, posicionEjeY);
            posicionEjeY -= 10
        }
    }, 10);

    let sumaPuntajeTotal = 0;
    let velocidad = 20;

    let animacionPuntaje = setInterval(function(){
        resultado.querySelector('span').textContent = `${sumaPuntajeTotal}%`;
        if(sumaPuntajeTotal === puntaje){
            clearInterval(animacionPuntaje);
        } else {
            sumaPuntajeTotal++;
        }
    }, velocidad);
});