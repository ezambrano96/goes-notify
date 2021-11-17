FROM python:2.7.16 build
RUN pip install requests
WORKDIR /app
COPY . .
ENTRYPOINT ["python", "goes-notify.py", "--config=/app/config.json"]
