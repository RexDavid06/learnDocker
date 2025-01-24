FROM  python:3.12

WORKDIR /app

COPY requirement.txt /app/

RUN pip install -r requirements.txt
COPY . /app

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

CMD ["python", "manage.py", "runserver", "0.0.0.0.8000" ]

EXPOSE 8000