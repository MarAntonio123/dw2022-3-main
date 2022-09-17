const obtenerJson = async function(phpFileGet){
    try {
        const data = await fetch(phpFileGet);
        const res = await data.json();
        return res.resultado;
    } catch (error) {
        console.log(error);
    }
}

const rolesSelect = document.querySelector('.rolesSelect');

const render = async function(){
    const data = await obtenerJson('backFetch/get_roles.php');
    let plantilla = '';
    data.forEach(el => {
        plantilla += `
            <option value="${el.r_id}">${el.r_nombre}</option>
        `;
    });
    rolesSelect.insertAdjacentHTML('beforeend', plantilla);    
}

render();