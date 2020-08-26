docker build --tag=wisdompet .
docker image ls
docker run --publish 7000:8080 wisdompet
cmd /k