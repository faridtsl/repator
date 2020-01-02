# Repator

Repator is a helper tool designed to automatize the process of report writing, initially for pentesters, but it was developped such that it will be easily customizable for different reporting usage.

## Normal install

### Repator
    git clone https://github.com/lnv42/repator

### Dependancies
    cd repator
    pip3 install -r requirements.txt

## Update
    cd repator
    git pull
    pip3 install -r requirements.txt

## Start
    cd repator
    ./repator.py
or

    cd repator
    python3 repator.py

## Docker install

```bash
# To build the repator container
docker build . --tag repator

# To run the repator
docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -v /PATH/TO/YOUR/PROJECTS:/tmp/projects -e DISPLAY=$DISPLAY -u qtuser repator
```
