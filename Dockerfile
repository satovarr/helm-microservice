
FROM python:3.10.13


WORKDIR /


COPY ./requirements.txt /requirements.txt


RUN pip install --no-cache-dir --upgrade -r /requirements.txt


COPY ./app /app

EXPOSE 8000


CMD ["fastapi", "run", "app/main.py", "--host", "0.0.0.0", "--port", "8000"]