FROM alpine:3.4
MAINTAINER WangXian <xian366@126.com>

WORKDIR /app
VOLUME /app
COPY startup.sh /startup.sh

RUN apk -U upgrade && \
    apk add --no-cache mysql
COPY my.cnf /etc/mysql/my.cnf

EXPOSE 3306
CMD ["/startup.sh"]
