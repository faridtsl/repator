FROM python

RUN pip3 install -r requirements.txt

RUN chmod +x repator.py

ENTRYPOINT ["repator.py"]
