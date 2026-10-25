FROM python:3.9-alpine3.22
COPY ./home.py ./
COPY ./requirements.txt ./
RUN pip install -r requirements.txt
ENTRYPOINT ["flask", "--app","home","run","--host=0.0.0.0"]
