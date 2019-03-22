
FROM alpine:latest

LABEL "com.github.actions.name"="Automated Merges"
LABEL "com.github.actions.description"="Automates necessary merges for deploy from web"
LABEL "com.github.actions.icon"="command"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/alejomendoza/automated-merge"
LABEL "maintainer"="Alejo Mendoza <alejo@splice.com>"

RUN apk add -U \
  --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing \
  hub git

WORKDIR /github/workspace
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]