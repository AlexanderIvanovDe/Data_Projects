# 1. Берем готовый официальный легкий образ с Python 3.10
FROM python:3.10-slim

# 2. Задаем рабочую директорию внутри контейнера
WORKDIR /app

# 3. Копируем файл со списками библиотек и устанавливаем их
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Копируем остальные файлы проекта (скрипты и базу данных)
COPY . .

# 5. Команда по умолчанию при запуске контейнера
CMD ["python", "dataloader.py"]