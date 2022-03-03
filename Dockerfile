FROM python:3.8

WORKDIR /usr/src/app

COPY ./requirements.txt .

RUN pip install -r requirements.txt

RUN python -m nltk.downloader stopwords

COPY . .

CMD ["python", "main.py"]