#!/bin/bash
docker run -itd --name mongo-data openstar/mongo-data
docker run -d --name mongo --volumes-from=mongo-data mongo
