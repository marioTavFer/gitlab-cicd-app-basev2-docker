# FROM node:16-alpine
FROM node:22-alpine3.23

WORKDIR /usr/src/app

COPY ./app/package*.json ./
RUN npm install
COPY ./app .

EXPOSE 3000
CMD ["npm", "start"]
