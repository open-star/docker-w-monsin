#!/bin/bash
docker run -itd --name mongo-data openstar/mongo-data
docker run -d --name mongo --volumes-from=mongo-data mongo
docker run -p 3000:3000 -itd --name w-monsin --link mongo:db openstar/w-monsin
