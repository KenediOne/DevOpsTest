#!/bin/bash

echo "📦 Остановка старого контейнера..."
docker compose down

echo "🔨 Сборка и запуск всех сервисов..."
docker compose up -d --build

echo "✅ Приложение развернуто. Логи:"
docker compose logs app
