from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from conexion_postgres import obtener_conexion

app = FastAPI(title="Servicio de Datos Osteológicos")
app.add_middleware(CORSMiddleware, allow_origins=["*"])

@app.get("/ficha/{id_hueso}")
def obtener_ficha(id_hueso: int):
    conn = obtener_conexion()
    cursor = conn.cursor()
    cursor.execute("""
        SELECT nombre, nombre_cientifico, region, ubicacion, caracteristicas, uso_forense, imagen
        FROM datos_huesos WHERE hueso_id = %s
    """, (id_hueso,))
    fila = cursor.fetchone()
    conn.close()

    return {
        "nombre": fila[0],
        "nombre_cientifico": fila[1],
        "region": fila[2],
        "ubicacion": fila[3],
        "caracteristicas": fila[4],
        "uso_forense": fila[5],
        "imagen": fila[6]
    }

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=5000)