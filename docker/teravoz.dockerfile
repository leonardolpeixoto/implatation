FROM node:8-alpine

MAINTAINER Leonardo Peixoto
ENV NODE_ENV=development

COPY ./teravoz /var/www
WORKDIR /var/www

RUN npm i && npm run seed

ENTRYPOINT ["npm", "start"]

EXPOSE 3001