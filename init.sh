sudo unlink /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn.conf.py  /etc/gunicorn.d/gunicorn.conf.py
exec gunicorn -c /etc/gunicorn.d/gunicorn.conf.py hello:app
