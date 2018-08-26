docker exec -it -u root $(docker ps -aq) /bin/bash -c "apt-get update"
docker exec -it -u root $(docker ps -aq) /bin/bash -c "apt-get  install git binutils make gcc cpp g++ -y"
