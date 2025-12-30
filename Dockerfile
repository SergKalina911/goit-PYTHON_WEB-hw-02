# Базовий образ з Python 3.13

FROM python:3.13-slim

# Встановлюємо Poetry

RUN pip install poetry

# Робоча директорія

WORKDIR /app

# Копіюємо файли проекту

COPY pyproject.toml poetry.lock\* main.py ./

# Встановлюємо залежності

RUN poetry install --no-root

# Команда запуску

ENTRYPOINT ["poetry", "run", "assistant"]
