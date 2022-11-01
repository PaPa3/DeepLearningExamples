PORT=${PORT:-8888}

docker run -it --rm --ipc=host -p $PORT:$PORT -v $PWD:/workspace/fastpitch/ fastpitch:latest bash 