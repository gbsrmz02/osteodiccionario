@echo off
echo Iniciando OsteoDiccionario...
docker compose down -v
docker compose up -d --build
timeout /t 10
echo.
echo ✅ Aplicación lista en: http://localhost:8080
pause