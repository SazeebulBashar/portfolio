FROM python:3.11-bullseye

ENV PYTHONBUFFERED=1

WORKDIR /portfolio

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD python manage.py runserver 0.0.0.0:8000


