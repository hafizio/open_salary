# Use an official Elixir runtime as a parent image
FROM elixir:1.11.4-alpine

RUN apk update
RUN apk upgrade --no-cache
RUN apk add nodejs=14.16.1-r1 nodejs-npm=14.16.1-r1 yarn
RUN apk add inotify-tools=3.20.11.0-r0
RUN apk add postgresql-client=13.3-r0
RUN apk add protoc

ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install pip setuptools protobuf
RUN apk add py3-scikit-learn

RUN mix local.rebar --force
RUN mix local.hex --force

# Create app directory and copy the Elixir projects into it
RUN mkdir /app

WORKDIR /app

CMD ["sh", "./entrypoint.sh"]
