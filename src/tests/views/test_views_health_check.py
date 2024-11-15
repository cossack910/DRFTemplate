import pytest
from django.urls import reverse

def test_views_health_check(client):
    # ヘルスチェックエンドポイントにGETリクエストを送信
    url = reverse('health_check')
    response = client.get(url)

    # ステータスコードが200であることを確認
    assert response.status_code == 200

    # レスポンスの内容が {"status": "ok"} であることを確認
    assert response.json() == {"status": "ok"}
