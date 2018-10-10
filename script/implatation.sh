#!/bin/bash

path_root=$(pwd)

bash script/creator.sh $path_root client
bash script/creator.sh $path_root teravoz

if [ ! -d $path_root/db_data ];then
  mkdir $path_root/db_data
fi

docker-compose up -d
docker-compose stop
docker-compose start
docker exec teravoz npm run seed 
docker-compose logs -f