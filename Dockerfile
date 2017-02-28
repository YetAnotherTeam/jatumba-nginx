FROM umputun/nginx-le:latest

VOLUME ["./etc/ssl:/etc/nginx/ssl", "./conf.d/default.conf:/etc/nginx/service.conf"]

ENV TZ=America/Chicago \
    LETSENCRYPT=true \
    LE_EMAIL=afti@yandex.ru \
    LE_FQDN=jatumba.ru,www.jatumba.ru
#RUN rm /etc/nginx/conf.d/default.conf
#COPY conf.d/nginx /etc/nginx/conf.d
#COPY nginx.conf /etc/nginx/
#version: '2'
#services:
#    nginx:
#        build: .
#        image:
#        hostname: nginx
#        restart: always
#        container_name: nginx
#
#        logging:
#          driver: json-file
#          options:
#              max-size: "10m"
#              max-file:
#
#        environment:
#            - TZ=America/Chicago
#            - LETSENCRYPT=true
#            - LE_EMAIL=name@example.com
#            - LE_FQDN=www.example.com
#            #- SSL_CERT=le-crt.pem
#            #- SSL_KEY=le-key.pem
