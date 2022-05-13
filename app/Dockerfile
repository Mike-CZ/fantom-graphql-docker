FROM golang:1.18-buster

ARG PUID=1000
ENV PUID ${PUID}
ARG PGID=1000
ENV PGID ${PGID}

COPY entrypoint.sh /app/

RUN go install github.com/go-delve/delve/cmd/dlv@latest

WORKDIR /var/graphql

ENTRYPOINT ["bash", "/app/entrypoint.sh"]