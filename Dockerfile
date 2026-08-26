FROM python:3.12-slim

WORKDIR /app

RUN apt-get update && apt-get install -y  gcc default-libmysqlclient-dev pkg-config && \
rm -rf /var/lib/apt/lists/*

COPY requirement.txt .

COPY . .

RUN pip install --no-cache-dir -r requirement.txt

EXPOSE 5000

CMD ["python", "app.py"]
