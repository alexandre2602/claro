FROM nginx:1.19.4
WORKDIR /etc/nginx
LABEL Description="BLOG46 Webserver - v1.0"
ADD nginx.conf /etc/nginx
ADD blog46.conf /etc/nginx/conf.d
COPY expires.conf /etc/nginx/
COPY ./site-melodi/ /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
