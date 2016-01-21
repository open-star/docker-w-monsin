#!/bin/bash
docker run -itd --name mongo-data mahoshi60/mongo-data
docker run -d --name mongo --volumes-from=mongo-data mongo
docker run -itd --name node-ap --link mongo:db mahoshi60/node-ap
docker run -itd --name nginx-cache mahoshi60/nginx-cache
docker run -d -p 443:443 --name nginx --link node-ap:node-ap --volumes-from=nginx-cache mahoshi60/nginx
