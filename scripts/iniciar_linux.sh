#!/bin/bash
echo "Iniciando OsteoDiccionario..."
docker compose down -v
docker compose up -d --build
sleep 10
echo -e "\n✅ Aplicación disponible en: http://localhost:8080"