FROM python:3.13-slim

ENV FLASK_APP=app.py
ENV FLASK_ENV=development
ENV FLASK_RUN_PORT=8080

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

RUN flask db init && \
    flask db migrate -m "Initial migration." && \
    flask db upgrade

CMD ["flask", "run"]
