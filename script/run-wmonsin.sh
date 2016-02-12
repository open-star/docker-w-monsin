#!/bin/bash
docker run -p 3000:3000 -itd --name w-monsin --link mongo:db openstar/w-monsin
