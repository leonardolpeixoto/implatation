FROM node:8-alpine
MAINTAINER Leonardo Peixoto

ENV NODE_ENV=development

COPY ./client /var/www
WORKDIR /var/www

RUN npm i

ENTRYPOINT ["npm", "start"]

EXPOSE 3000