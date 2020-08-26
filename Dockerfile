FROM python:3.7.3-stretch

# copy file to docker image
WORKDIR /app

COPY . /app/

# install dependencies
RUN pip install --upgrade pip &&\
    pip install django

# export docker image port 8080
EXPOSE 8080

# run application on port 7000
CMD ["python", "manage.py", "runserver", "7000"]


