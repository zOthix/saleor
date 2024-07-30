python3 manage.py collectstatic --no-input
python3 manage.py migrate
gunicorn --bind :8000 --workers 4 --worker-class saleor.asgi.gunicorn_worker.UvicornWorker saleor.asgi:application