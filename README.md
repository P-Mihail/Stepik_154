## 1.8 Web-сервера (Отдача статических файлов)

### Для сдачи
1. `git clone https://github.com/P-Mihail/Stepik_154.git /home/box/web`
2. `git -C /home/box/web checkout tags/Stepik-1.8.12`
3. `bash /home/box/web/init.sh`

### Для локального запуска и экспериментов
1. `docker build -t stepik154:latest .`
2. `docker run -it -v "{ABS_PATH_TO_PROJECT}:/home/box/web" -p 80:80 stepik154`
3. `unlink /etc/nginx/sites-enabled/default`
4. `ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf`
5. `/etc/init.d/nginx restart`

## 1.9 Архитектура frontend-backend (Запуск WSGI приложений)

1. `git clone https://github.com/P-Mihail/Stepik_154.git /home/box/web`
2. `git -C /home/box/web checkout tags/Stepik-1.9.11`
3. `bash /home/box/web/init.sh`


### Для локального запуска и экспериментов
1. `docker build -t stepik154:latest .`
2. `docker run -it -v "{ABS_PATH_TO_PROJECT}:/home/box/web" -p 80:80 -p 8080:8080 stepik154:latest`
3. `unlink /etc/nginx/sites-enabled/default`
4. `ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf`
5. `/etc/init.d/nginx restart`
6. `gunicorn -c /home/box/web/etc/gunicorn.conf.py hello:app`


## 2.1 MVC фреймворки (Создание Django приложения)

### Для локального запуска и экспериментов
Пункты 3-5 выполняются только при первом запуске, чтоб создать на робочей машине начальную структуру Django приложения.
1. `docker build -t stepik154:latest .`
2. `docker run -it -v "{ABS_PATH_TO_PROJECT}:/home/box/web" -p 80:80 -p 8080:8080 -p 8000:8000 stepik154:latest`
3. `mkdir home/box/web/ask && cd "$_"`
4. `django-admin startproject ask .`
5. `python3 -B manage.py startapp qa`
