FROM jupyter/minimal-notebook

RUN apt update
RUN apt upgrade -y

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY ./preparation.ipynb .
COPY ./train.ipynb .

EXPOSE 8888
