FROM python:3.8

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt /app/
RUN pip3 install -r requirements.txt
COPY . .

ENTRYPOINT ["python3", "manage.py", "runserver", "0.0.0.0:8000"]