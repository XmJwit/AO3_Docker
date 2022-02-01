LABEL org.opencontainers.image.authors="XmJwit"

FROM nginx:latest

COPY nginx /etc/nginx
COPY ao3 /usr/share/nginx/html/ao3

ENTRYPOINT ["nginx", "-c"]
CMD ["/etc/nginx/site.conf"]

EXPOSE 80 443
