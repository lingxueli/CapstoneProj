FROM python:3.7.3-stretch

# copy file to docker image
WORKDIR /app

COPY . /app/

# install dependencies
RUN pip3 install --upgrade pip &&\
    pip3 install --trusted-host pypi.python.org -r requirements.txt

# export docker image port 8080
EXPOSE 8080

# run application on port 8000
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]


