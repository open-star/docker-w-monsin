#!/bin/bash
docker run -itd --name w-monsin --link mongo:db openstar/w-monsin
docker run -itd --name nginx-cache openstar/nginx-cache
docker run -d -p 80:80 --name nginx --link w-monsin:w-monsin --volumes-from=nginx-cache openstar/nginx
