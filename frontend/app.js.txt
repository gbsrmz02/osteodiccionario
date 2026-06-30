const API_NODE = "http://localhost:3000/api/huesos";
const API_PYTHON = "http://localhost:5000/ficha";

const buscador = document.getElementById("buscador");
const filtroRegion = document.getElementById("filtro-region");
const listaHuesos = document.getElementById("lista-huesos");
const fichaContenido = document.getElementById("ficha-contenido");

async function cargarHuesos() {
    const texto = buscador.value.trim().toLowerCase();
    const region = filtroRegion.value;

    try {
        const respuesta = await fetch(`${API_NODE}?q=${encodeURIComponent(texto)}&region=${region}`);
        const datos = await respuesta.json();

        listaHuesos.innerHTML = "";

        if (datos.length === 0) {
            listaHuesos.innerHTML = `<li>No se encontraron huesos con ese criterio</li>`;
            return;
        }

        datos.forEach(hueso => {
            const li = document.createElement("li");
            li.textContent = hueso.nombre;
            li.dataset.id = hueso.id;
            li.addEventListener("click", () => verFicha(hueso.id));
            listaHuesos.appendChild(li);
        });

    } catch (error) {
        listaHuesos.innerHTML = `<li>Error al cargar datos</li>`;
    }
}

async function verFicha(id) {
    try {
        const respuesta = await fetch(`${API_PYTHON}/${id}`);
        const datos = await respuesta.json();

        fichaContenido.innerHTML = `
            <div class="ficha-detalle">
                <h3>${datos.nombre}</h3>
                <p class="cientifico">${datos.nombre_cientifico}</p>
                <img class="imagen-hueso" src="${datos.imagen}" alt="${datos.nombre}">
                <div class="seccion">
                    <h4>📍 Ubicación</h4>
                    <p>${datos.ubicacion}</p>
                </div>
                <div class="seccion">
                    <h4>🔬 Características</h4>
                    <p>${datos.caracteristicas}</p>
                </div>
                <div class="seccion">
                    <h4>⚖️ Relevancia Forense</h4>
                    <p>${datos.uso_forense}</p>
                </div>
            </div>
        `;
    } catch (error) {
        fichaContenido.innerHTML = `<p>Error al cargar la ficha</p>`;
    }
}

buscador.addEventListener("input", cargarHuesos);
filtroRegion.addEventListener("change", cargarHuesos);
window.addEventListener("load", cargarHuesos);