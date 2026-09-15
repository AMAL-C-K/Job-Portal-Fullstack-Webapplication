#!/usr/bin/env bash

python manage.py migrate

python manage.py collectstatic --noinput

python manage.py shell -c "from accounts.models import User; User.objects.filter(username='admin').exists() or User.objects.create_superuser('admin', 'admin@gmail.com', '1234')"
