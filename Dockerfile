FROM mywebapp
USER root
RUN apk add nginx

COPY nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /usr/share/nginx/html

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 8100

CMD [ "nginx", "-g", "daemon off;" ]