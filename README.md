# DRFTemplate

DRF テンプレートリポジトリ

ディレクトリ構造

```
my_django_project/
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
└── src/
    ├── myapp
    ├── myproject
    ├── tests
    └── manage.py
```

.env を設定する

```bash
cp .example.env .env
```

コンテナビルド

```
make build
```

コンテナ起動

```
make up
```

コンテナ削除

```
make down
```

マイグレーション

```
make migrate
```
