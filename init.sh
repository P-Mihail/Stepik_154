sudo pip3 install Django==2.0.1
sudo unlink /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
exec gunicorn -D -c /home/box/web/etc/gunicorn-wsgi.conf.py hello:app &
cd /home/box/web/ask/ 
exec gunicorn -D -c ../etc/gunicorn-django.conf.py ask.wsgi:application &
