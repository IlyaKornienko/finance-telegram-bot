Telegram бот в учебных целях взял [из этого видео](https://www.youtube.com/watch?v=Kh16iosOTIQ).

Прокси сервер не использовал.

ID удалил для дальнейшего улутшения (планирую использовать бот совместно с женой).

`TELEGRAM_API_TOKEN` — API токен бота

Использование с Docker показано ниже для упрощения создания image и запуска container. 

```
docker build -t tg_ff_korniienko ./
```

Обязательно прокинуть volume для сохранения базы данных.
 
```
docker run -d --name tg_ff -v /home/__/db:/home/db tg_ff_korniienko
```

Чтобы войти в работающий контейнер:

```
docker exec -ti tg_ff bash
```

Войти в контейнере в SQL шелл:

```
docker exec -ti tg_ff bash
sqlite3 /home/db/finance.db
```


