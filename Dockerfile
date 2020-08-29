FROM python:3.7.3-stretch

# copy file to docker image
WORKDIR /app

COPY . /app/

# install dependencies
RUN pip3 install --upgrade pip &&\
    pip3 install --trusted-host pypi.python.org -r requirements.txt

# app runs on port 8000, docker container listens on port 8000

EXPOSE 8000

# run application on port 8000
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]


