sudo unlink /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn-wsgi.conf.py  /etc/gunicorn.d/gunicorn-wsgi.conf.py
exec gunicorn -D -c /etc/gunicorn.d/gunicorn-wsgi.conf.py hello:app
