FROM node:20-alpine

ARG mongodb
ENV MONGO_DB  $mongodb

ENV MONGO_USER='admin' \
    MONGO_PASS='' \
    MONGO_HOST='' \
    MONGO_PORT=27017 \
    APP_HOST='' \
    PORT=3000

RUN mkdir -p /home/app
WORKDIR /home/app
    
COPY ./app . 
RUN npm install

EXPOSE 3000

CMD ["node", "server.js"]

