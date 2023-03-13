docker rm $(docker ps -a -q)
docker build -t pytorch2:latest .
docker rmi $(docker images -f dangling=true -q)
docker run -it --rm --network=host --gpus all -v $PWD:/pytorch-examples --workdir /pytorch-examples pytorch2:latest