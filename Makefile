# Docker Compose commands
up:
	docker compose up

up-detached:
	docker compose up -d

build:
	docker compose build

up-build:
	docker compose up --build

down:
	docker compose down

# Django management commands

# Djangoアプリの作成
app:
	docker compose run web python manage.py startapp $(name)

# Djangoプロジェクトの作成
project:
	docker compose run web django-admin startproject $(name)

# test
test:
	docker compose run web tox -- tests/