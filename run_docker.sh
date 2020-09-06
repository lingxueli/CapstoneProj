docker build --tag=wisdompet .
docker image ls

# publish container port 8000 to host port 8080, app service is accessible from localhost:8080
#docker run -it --name wisdompet -p 8080:8000 wisdompet
docker run -it --name wisdompet -p 8000:8000 wisdompet



