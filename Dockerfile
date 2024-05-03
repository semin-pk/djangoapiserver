FROM python:3.12-rc-buster as build

WORKDIR /usr/src/app

RUN pip install django
RUN pip install djangorestframework
COPY . .

EXPOSE 80
CMD [ "python", "manage.py", "runserver", "0.0.0.0:80" ]