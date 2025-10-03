# 🐍 Базовый образ
FROM python:3.10-slim

# 📁 Устанавливаем рабочую директорию
WORKDIR /app

# 📦 Копируем зависимости и устанавливаем их
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 📁 Копируем всё приложение
COPY . .

# 🎯 Стартовая команда (можно заменить на gunicorn)
CMD ["uvicorn", "src.app:app", "--host", "0.0.0.0", "--port", "80"]
