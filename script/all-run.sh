#!/bin/bash
docker run -itd --name mongo-data mahoshi60/mongo-data
docker run -d --name mongo --volumes-from=mongo-data mongo
docker run -itd --name node-ap --link mongo:db mahoshi60/node-ap
