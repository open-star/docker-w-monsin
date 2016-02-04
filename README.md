# w-monsin
タブレット対応問診票Webアプリ w-monsin のドッカー化に必要なファイルを置いています。
現在のバージョンは、アルファ版です。
## w-monsin とは？
https://w-monsin.com を参照願います。
## ディレクトリの説明
- script：w-monsin を構成する全てのコンテナを実行、停止、削除するスクリプトを置いています。

## w-monsin 関連のコンテナの生成と起動
### Linux の場合
#### リポジトリの複製
w-monsin 関連のコンテナを一括で起動するスクリプトを用意しています。お使い下さい。
このスクリプトをダウンロードするため、リポジトリを複製します。
	$ git clone https://github.com/open-star/docker-w-monsin.git
####ディレクトリの移動
	$ cd docker-w-monsin
####コンテナ一括起動スクリプトの実行
下記のスクリプトの実行で、w-monsin 関連のDockerイメージからコンテナを生成し、
#####Nginxを使う場合
	$ script\all-run-nginx.sh
#####Nginxを使わない場合
	$ script\all-run.sh
#### MongoDBのユーザ作成
この手順は、暫定です。将来には、この手順を廃止するように改善します。
	$ docker exec -it mongo /bin/bash
	# echo "db.createUser({user:\"oda\", pwd:\"zz0101\", roles:[ \"readWrite\", \"dbOwner\" ]});" > init.js
	# mongo localhost/patient -quiet init.js
	# Ctrl+p その後 Ctrl+q　（コンテナを起動したまま、元のシェルに戻る）
	
### Windows の場合
- デスクトップの「Docker Quickstart Terminal」アイコンをダブルクリックします。
- コンソールで下記のコマンドを入力して default 仮想マシン にssh で接続します。

	`$ docker-machine ssh default`	 
以下、Linuxの場合の手順と同じです。
 
### Mac の場合
- デスクトップの「Docker Quickstart Terminal」アイコンをダブルクリックします。
- コンソールで下記のコマンドを入力して default 仮想マシン にssh で接続します。

	`$ docker-machine ssh default`	 
以下、Linuxの場合の手順と同じです。

##クライアントからサーバへの接続
###サーバのIPアドレスを調査
クライアントと接続するため、サーバのIPアドレスを調べます。
- Linuxの場合:　　コンテナを起動したマシンのIPアドレス
- Windows/Macの場合:　コンソールで下記コマンドを実行し、その戻り値を使用します。

`docker-machine ip default`　（defaultは、仮想マシン名です）
以下、サーバのIPアドレスを server-ip とします。

##クライアントから接続
- クライアントPCでブラウザを起動します。
- ブラウザのアドレスバーに下記を入力します。
-- Nginxを使う場合
	http://server-ip
-- Nginxを使わない場合
	http://server-ip:3000

以上で、ブラウザにw-monsin のトップ画面が表示されます

##DockerfileからのDockerイメージの作成方法
自分のマシンでDockerfileからのDockerイメージの作成する方法について説明します。
- Dockerfileの存在するディレクトリに移動します。
- docker build コマンドを実行します。

	`$ docker build -t my-w-monsin .`
