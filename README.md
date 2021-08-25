# アプリ概要
## Letter Boxについて
顧客が気軽に従業員に感謝を伝えることができるアプリ。  

## 本リポジトリについて
本リポジトリはバックエンドのみを担当。  

フロントエンドは客側と管理画面の2つに分かれる。
LetteBoxで用いる他のリポジトリは以下の通り。  

### 客側クライアント
https://github.com/yudai-nakajima/letter-box-frontend-client
### 管理画面
https://github.com/yudai-nakajima/letter-box-client-management
### API仕様書
https://github.com/yudai-nakajima/letter-box-api

# 作成目的
店員に対して感謝を気軽に伝える手段を提供するアプリを開発したいと思ったため

# 使用技術
※本リポジトリで利用している技術のみ記述
- Docker
- Docker-Compose
- Ruby
- Ruby on Rails

# 機能一覧
- メッセージ送信機能

# セットアップ
開発環境構築に`docker-compose`を用いているため以下コードで動作環境は揃う
```bash
$ docker-compose build
$ docker-compose up
```

その後、`backend_api_1`に接続して、以下コマンドを実行する
```bash
$ rails db:create
$ rails db:migrate
$ rails db:seed
```
