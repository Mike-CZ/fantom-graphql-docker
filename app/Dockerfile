FROM golang:1.18-buster

COPY entrypoint.sh /app/

RUN go install github.com/go-delve/delve/cmd/dlv@latest

WORKDIR /var/graphql

ENTRYPOINT ["bash", "/app/entrypoint.sh"]