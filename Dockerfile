FROM python:3.8-alpine

ARG CLI_VERSION=1.17.7

RUN apk -uv add --no-cache groff jq less && \
    pip install --no-cache-dir awscli==$CLI_VERSION

WORKDIR /local

ENTRYPOINT ["aws"]
