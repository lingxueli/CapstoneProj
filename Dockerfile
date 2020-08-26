FROM python:3.7.3-stretch

# copy file to docker image
WORKDIR /app

COPY . /app/

# install dependencies
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

# export docker image port 8080
EXPOSE 8080

# run application on port 8000
CMD ["python", "manage.py", "runserver", "8000"]


