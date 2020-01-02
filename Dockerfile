FROM fadawar/docker-pyqt5

RUN apt update
RUN apt install python3 python3-pip -y
RUN apt install libgl1-mesa-glx -y
RUN apt install git -y

COPY . /repator
WORKDIR /repator

RUN pip3 install -r requirements.txt

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y locales \
    && sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen \
    && dpkg-reconfigure --frontend=noninteractive locales \
    && update-locale LANG=en_US.UTF-8
ENV LANG en_US.UTF-8 
ENV LC_ALL en_US.UTF-8

RUN chown qtuser: . -R
RUN chmod +x /repator/repator.py
ENTRYPOINT ["/repator/repator.py"]
