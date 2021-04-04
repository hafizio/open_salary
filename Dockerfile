# Use an official Elixir runtime as a parent image
FROM elixir:1.11.4-alpine

RUN apk update
RUN apk upgrade --no-cache
RUN apk add nodejs=14.16.0-r0 nodejs-npm=14.16.0-r0 yarn
RUN apk add inotify-tools=3.20.11.0-r0
RUN apk add postgresql-client=13.2-r0
RUN mix local.rebar --force
RUN mix local.hex --force

# Create app directory and copy the Elixir projects into it
RUN mkdir /app

WORKDIR /app

CMD ["sh", "./entrypoint.sh"]
