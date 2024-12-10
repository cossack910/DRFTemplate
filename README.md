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

## 環境変数一覧

| 環境変数               | 説明                   |
| ---------------------- | ---------------------- |
| SECRET_KEY             |                        |
| DATABASE_URL           |                        |
| DATABASE_ENGINE        |                        |
| DATABASE_NAME          |                        |
| DATABASE_USER          |                        |
| DATABASE_PASSWORD      |                        |
| DATABASE_ROOT_PASSWORD |                        |
| DATABASE_HOST          | データベースのホスト　 |
| DATABASE_PORT          | データベースのポート   |
