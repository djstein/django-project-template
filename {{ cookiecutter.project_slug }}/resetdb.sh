#!/bin/sh
read -r -p "Enter username: " USERNAME

if [[ -z "${USERNAME}" ]]; then
  echo ""
  echo "ERROR: Enter username"
  exit 1
fi

dropdb {{ cookiecutter.project_slug }}
createdb {{ cookiecutter.project_slug }}
python manage.py makemigrations
python manage.py migrate
# python manage.py loaddata config/fixtures/*.json
python manage.py createsuperuser --username "${USERNAME}" --email "${USERNAME}@{{ cookiecutter.domain_name }}"
