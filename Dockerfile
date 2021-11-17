FROM python:3.0.01 build
DOCKER_BUILDKIT=0
RUN pip install requests
WORKDIR /app
COPY . .
ENTRYPOINT ["python", "goes-notify.py", "--config=/app/config.json"]
