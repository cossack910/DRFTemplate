# Debian 12（bookworm）で固定
FROM python:3.12-slim-bookworm


# 作業ディレクトリの設定
WORKDIR /app

# システムパッケージのインストール（MySQLクライアントに必要なライブラリも含む）
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    build-essential \
    gcc \
    libmariadb-dev \
    libmariadb-dev-compat \
    pkg-config \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 必要なPythonパッケージのインストール
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# プロジェクトファイルのコピー
COPY ./src /app

# GunicornでDjangoアプリケーションを起動
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "myproject.wsgi:application"]
