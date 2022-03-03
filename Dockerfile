FROM python:3.7.10

WORKDIR /usr/src/app

COPY ./requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD ["python", "main.py"]