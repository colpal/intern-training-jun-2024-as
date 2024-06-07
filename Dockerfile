FROM python:3.12-slim as dist

WORKDIR /app


COPY ./backend/requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY ./backend .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
