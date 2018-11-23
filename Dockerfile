FROM tensorflow/tensorflow:latest-gpu

ADD . /home

WORKDIR /home

RUN apt-get update
RUN apt-get -y install python3-dev python3-pip
RUN apt-get -y update
RUN pip3 install -U pip
RUN pip install -r rg-dckr.txt

CMD ["bash"]
