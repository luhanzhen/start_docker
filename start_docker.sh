#!/bin/bash

# function: start the docker with ssh service
# author: zhenluhan
# date: 2023.6.3

if [ $# == 0 ]; then
    echo "start_docker.sh -name1  -name2 ... [start the docker with ssh service.]"
else
    for i in "$@"; do
        if [ "$(docker ps -aq -f status=exited -f name=$i)" ];then
            docker start $i
            docker exec $i service ssh start
        else
            echo "the container named $i do not exist!!!"
        fi
    done
fi