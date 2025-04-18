# DevOps Test Task

## Java-приложение
Spring Boot приложение с endpoint `/health`

## CI/CD Pipeline
Реализовано через Jenkins:
- Maven билд
- Docker сборка
- Развертывание через `docker-compose`
- Тестирование `curl http://localhost:8080/health`

## Мониторинг
Используется Prometheus + Grafana
- Метрики собираются с `localhost:8080`
- Настроены алерты на CPU/Memory

## Как запустить
```bash
git clone ...
cd devops-test-task
docker-compose up -d
