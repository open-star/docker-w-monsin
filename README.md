# w-monsin

タブレット対応問診票Webアプリ w-monsin のドッカー化に必要なファイルを置いています。
現在のバージョンは、アルファ版です。

## w-monsin とは？

https://w-monsin.com を参照願います。


## ディレクトリの説明
* script：w-monsin を構成する全てのコンテナを実行、停止、削除するスクリプトを置いています。

##Docker イメージを使用する方法

###リポジトリの複製
	$ git clone https://github.com/open-star/docker-w-monsin.git

###ディレクトリの移動
	$ cd docker-w-monsin

###実行スクリプトの実行
下記のスクリプトの実行で、問診票アプリのサーバ側が起動します。
####Nginxを使う場合
	$ script\all-run-nginx.sh

####Nginxを使わない場合
	$ script\all-run.sh

##DockerfileからのDockerイメージの作成方法
自分のマシンでDockerfileからのDockerイメージの作成する方法について説明します。
Dockerfileの存在するディレクトリに移動して下さい。
次に、docker build コマンドを実行して下さい。
###MongoDB のデータ専用コンテナの作成
	$ docker build -t mongo-data .

###Node.jsアプリ（w-monsin本体）の作成
	$ docker build -t w-monsin .

###Nginx のキャッシュ専用コンテナの作成
	$ docker build -t nginx-cache .
