# README

## 実行方法
イメージのビルド

`$ docker-compose build`

パッケージのインストール

`$ docker-compose run web yarn install`

dbの作成とmigration

`$ docker-compose run web db:create`

`$ docker-compose run web db:migrate`

`$ docker-compose run web db:seed`

実行
`$ docker-compose up -d`