FROM nginx:1.17.4-alpine

RUN rm /etc/nginx/conf.d/default.conf
RUN rm /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d
COPY nginx.conf /etc/nginx
COPY .htauth /etc/apache2/.htpasswd
