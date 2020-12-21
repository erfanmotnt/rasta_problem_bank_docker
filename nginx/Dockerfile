FROM node:latest as build

WORKDIR /app

COPY rasta_problem_bank_ui /app
ENV PATH /app/node_modules/.bin:$PATH

RUN npm i --production
RUN npm run-script build --production


FROM nginx:1.17.4-alpine

COPY --from=build /app/build /home/app/build
EXPOSE 80

RUN rm /etc/nginx/conf.d/default.conf
RUN rm /etc/nginx/nginx.conf
COPY nginx/default.conf /etc/nginx/conf.d
COPY nginx/nginx.conf /etc/nginx
COPY nginx/.htauth /etc/apache2/.htpasswd
