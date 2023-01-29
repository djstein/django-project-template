# {{ cookiecutter.project_name }}

```bash
poetry install
poetry shell
cp .env.example .env
python manage.py generate_secret_key
# put secret in .env
./resetdb.sh
```
