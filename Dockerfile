FROM python:3-alpine
ARG MD2CF_VERSION

WORKDIR /usr/src

RUN pip install md2cf==${MD2CF_VERSION}

ENTRYPOINT ["md2cf"]
