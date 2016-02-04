# w-monsin
タブレット対応問診票Webアプリ w-monsin のドッカー化に必要なファイルを置いています。
現在のバージョンは、アルファ版です。
## w-monsin とは？
https://w-monsin.com を参照願います。
## ディレクトリの説明
- script：w-monsin を構成する全てのコンテナを実行、停止、削除するスクリプトを置いています。

## w-monsin のコンテナイメージを使用する方法
Linuxの場合の w-monsin のコンテナイメージを使用する方法を以下に示します。
###リポジトリの複製
	$ git clone https://github.com/open-star/docker-w-monsin.git
###ディレクトリの移動
	$ cd docker-w-monsin
###実行スクリプトの実行
下記のスクリプトの実行で、w-monsin を構成する全てのコンテナが起動します。
####Nginxを使う場合
	$ script\all-run-nginx.sh
###Nginxを使わない場合
	$ script\all-run.sh
##DockerfileからのDockerイメージの作成方法
自分のマシンでDockerfileからのDockerイメージの作成する方法について説明します。
- Dockerfileの存在するディレクトリに移動します。
- docker build コマンドを実行します。
	`$ docker build -t my-w-monsin .`
