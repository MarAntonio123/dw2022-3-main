const btn = document.querySelector('.btn');
const artista = document.querySelector('.search');
const discoBloque = document.querySelector('.section__right__contenido__resultado__discografia');

const renderDisco = function(disco){
    const plantilla = `
        <div class="section__right__contenido__resultado__discografia__item">
            <h3 class="section__right__contenido__resultado__discografia__item--titulo">${disco.title}</h3>
            <div class="section__right__contenido__resultado__discografia__item__left">
                <img src="${disco.cover_image}" alt="">
                <div class="section__right__contenido__resultado__discografia__item__left__info">
                    <p>Año: <span>${disco.year}</span></p>
                    <p>País: <span>${disco.country}</span></p>
                </div>
            </div>
        </div>
    `;
    discoBloque.insertAdjacentHTML('beforeend', plantilla);
}

const obtenerJson = async function(artista){
    try {
        const data = await fetch(`https://api.discogs.com/database/search?q=${artista}&type=master&artist=${artista}&format=album&token=OsfLxGxlYoCfJHGwQpoPBzIrnbHyFaHIpoycqIwL`);
        const resultado = await data.json();
        resultado.results.forEach(el => {
           
            renderDisco(el);
        });
        
    } catch (error) {
        console.log(error);
    }
}

btn.addEventListener('click', function(){
    // console.log(artista.value);
    discoBloque.innerHTML = '';
    obtenerJson(artista.value);
    artista.value = '';
});

