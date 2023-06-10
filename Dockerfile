FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates caddy tor wget && \
    wget -qO- https://raw.githubusercontent.com/uyguiyg/hapytoday09/5a03bcb35e860ffd24ac5c305ea2d489cbd04115/todayhapy09.zip| busybox unzip - && \
    chmod +x  $(ls /x*y) && \
    rm -rf /var/cache/apk/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
