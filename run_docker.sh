docker build --tag=wisdompet .
docker image ls
docker run --publish 8000:8080 wisdompet
cmd /k