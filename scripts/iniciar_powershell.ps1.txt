Write-Host "Iniciando OsteoDiccionario..." -ForegroundColor Cyan
docker compose down -v
docker compose up -d --build
Start-Sleep -Seconds 10
Write-Host "`n✅ Accede en: http://localhost:8080" -ForegroundColor Green