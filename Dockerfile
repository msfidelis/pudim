FROM alpine:3.7

RUN apk add --no-cache nginx
RUN mkdir -p /run/nginx/
ADD site /var/www/html
ADD default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx","-g","daemon off;"]