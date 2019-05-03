FROM python:3.6
RUN apt-get update && apt-get install -y gettext
RUN mkdir -p /app
WORKDIR /app/
ADD requirements.txt /app/
RUN pip install -r requirements.txt
ADD . /app/
