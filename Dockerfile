FROM python:3.7.3-stretch

WORKDIR /app

COPY . /app/

RUN pip install --upgrade pip &&\
    pip install django

EXPOSE 8080

CMD ["python", "manage.py", "runserver"]


