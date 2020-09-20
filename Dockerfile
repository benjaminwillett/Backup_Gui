FROM tiangolo/meinheld-gunicorn-flask:python2.7

MAINTAINER Ben Willett "benw@techcamp.com.au"

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

RUN git clone https://github.com/benjaminwillett/Backup_Gui.git

WORKDIR /app/Backup_Gui

COPY . /app

WORKDIR /app

RUN ls

RUN pip install -r requirements.txt



