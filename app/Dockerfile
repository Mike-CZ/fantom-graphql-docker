FROM golang:1.18-buster

# add non-root user
ARG UID=1000
ARG GID=1000
RUN groupadd -g ${GID} -o user
RUN useradd -m -u ${UID} -g ${GID} -o -s /bin/bash user

USER user
RUN go install github.com/go-delve/delve/cmd/dlv@latest

USER root
COPY entrypoint.sh /app/
RUN chown -R user:user /app

USER user
WORKDIR /var/graphql

ENTRYPOINT ["bash", "/app/entrypoint.sh"]