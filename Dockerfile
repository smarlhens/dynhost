FROM alpine:3.14.2

MAINTAINER Samuel MARLHENS <samuel.marlhens@gmail.com>

RUN apk add --no-cache curl bind-tools && mkdir -p /usr/local/dynhost
ADD dynhost /usr/local/dynhost/dynhost

ENV LOG_FILE /usr/local/dynhost/logs/dynhost.log
ENV PATH /usr/local/dynhost:$PATH

ENTRYPOINT ["/usr/local/dynhost/dynhost", "/usr/local/dynhost/conf.d"]
