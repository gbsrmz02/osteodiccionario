import os
import psycopg2

def obtener_conexion():
    return psycopg2.connect(
        host=os.getenv("PG_HOST", "postgres"),
        database=os.getenv("PG_DB", "datos_osteologicos"),
        user=os.getenv("PG_USER", "osteo"),
        password=os.getenv("PG_PASS", "123456")
    )