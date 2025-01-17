FROM python:3.8

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

COPY . .
RUN pip3 install -r requirements.txt

CMD python manage.py runserver 0.0.0.0:$PORT