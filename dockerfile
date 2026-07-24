# 1. Легкий Python
FROM python:3.10-slim

# 2. Рабочая папка
WORKDIR /app

# 3. Установка библиотек
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Копируем файлы
COPY . .

# 5. Открываем порт 8888 наружу
EXPOSE 8888

# 6. Запускаем Jupyter Notebook без пароля и токенов для локальной разработки
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]