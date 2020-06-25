FROM python:3

RUN apt update
RUN apt upgrade -y

WORKDIR /app

COPY ./requirements.txt .
RUN pip3 install -r requirements.txt

COPY ./preparation.ipynb .
COPY ./training.ipynb .
COPY ./appointment_data.csv .

EXPOSE 8866
EXPOSE 8888

CMD [ "voila" ]
