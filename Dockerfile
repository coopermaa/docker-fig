#
# coopermaa/fig Dockerfile
#
# https://github.com/coopermaa/docker-fig
#
FROM debian:wheezy
MAINTAINER coopermaa77@gmail.com

ENV FIGPATH /usr/local/bin/fig

RUN apt-get update && apt-get install -y curl
RUN curl -L https://github.com/docker/fig/releases/download/1.0.1/fig-Linux-x86_64 -o \
    $FIGPATH && chmod +x $FIGPATH

WORKDIR /app
ENTRYPOINT ["/usr/local/bin/fig"]
CMD ["--help"]
