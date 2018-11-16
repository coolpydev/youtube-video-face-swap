FROM tensorflow/tensorflow:latest-gpu

ADD . /home

WORKDIR /home

RUN apt-get update
RUN apt-get -y install python3-dev python3-pip
RUN apt-get -y update
RUN apt-get -y install libsm6 libxext6 libfontconfig1 libxrender1
RUN pip3 install -U pip
RUN pip install -r rg-dckr.txt

CMD ["python3","2_train.py","--src=felipe neto","--dst=jair bolsonaro","--epochs=100000"]
