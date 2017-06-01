FROM  rpi-alpine-base:20170325

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk add --update nginx && \
    rm -rf /var/cache/apk/*

COPY nginx.conf /etc/nginx/nginx.conf
COPY site-default.conf /etc/nginx/conf.d/default.conf
COPY index.html /var/www/index.html

VOLUME ["/var/www", "/var/log/nginx/"]

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
