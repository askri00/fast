FROM teddysun/v2ray:latest

# Cloud Run exposes dynamic port
EXPOSE 8080

# Copy V2Ray config
COPY config.json /etc/v2ray/config.json

CMD ["v2ray", "run", "-c", "/etc/v2ray/config.json"]
