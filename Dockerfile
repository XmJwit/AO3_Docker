LABEL org.opencontainers.image.authors="XmJwit"

FROM alpine:latest

RUN apt install nginx && ufw allow 'Nginx HTTP'

COPY nginx /etc/nginx/conf.d
COPY ao3 /var/www/html/ao3

ENTRYPOINT ["nginx", "-c"]
CMD ["/etc/nginx/site.conf"]

EXPOSE 80 443
