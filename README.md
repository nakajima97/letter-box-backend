# アプリ概要

## Letter Box について

顧客が従業員に対して匿名でメッセージを送れるアプリ。  
メッセージをやり取りする機能はないが  
ログイン不要で誰に送るのかがURLに反映される。  
そのため、QRコードを読み取るだけでメッセージを誰に送るのか指定できる。  

## Letter Box を構成する要素

Letter Box は以下4つのリポジトリで構成される

### 客側フロントエンド

顧客がメッセージを伝える際に利用する画面  
https://github.com/yudai-nakajima/letter-box-frontend-client

### 管理画面フロントエンド

従業員がメッセージを確認するための画面
※本リポジトリ

### バックエンド

Letter Box のバックエンド
フロントエンドは客側・管理画面と分かれるが、バックエンドは 1 つのみ  
https://github.com/yudai-nakajima/letter-box-backend

### API 仕様書

https://github.com/yudai-nakajima/letter-box-api

# 作成目的
店員に対して気軽にメッセージを送れるアプリがあったら
感謝の気持ちとか伝えやすいよなと思ったため。

# 使用技術
※本リポジトリで利用している技術のみ記述
- Docker
- Docker-Compose
- Ruby
- Ruby on Rails
- Github Actions
  - push時にrspecによる検証 

# 機能一覧
- メッセージ送信
- 店舗一覧

# セットアップ
1. 開発環境構築に`docker-compose`を用いているため以下コードで動作環境は揃う
```bash
$ docker-compose build
$ docker-compose up
```

2. `backend_api_1`に接続して、DBを作成する
```bash
$ rails db:create
$ rails db:migrate
$ rails db:seed
```
3. `backend_api_1`に接続して、別リポジトリで管理しているAPI仕様書をcloneする  
※rspecを実行する際に使用するので、アプリを動かすだけならこの作業は飛ばしても問題ない
```bash
$ mkdir doc 
$ cd doc
$ git clone https://github.com/yudai-nakajima/letter-box-api.git
```
4. Gemをインストールする
```bash
$ bandle install
```
