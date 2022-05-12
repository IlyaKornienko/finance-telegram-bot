FROM python:3.8

WORKDIR /home

ENV TELEGRAM_API_TOKEN="5351275718:AAF7dVx9LO5zw5I08P11Og4GzIOXTn1obJA"

ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN pip install -U pip aiogram pytz && apt-get update && apt-get install sqlite3
COPY *.py ./
COPY createdb.sql ./

ENTRYPOINT ["python", "server.py"]

