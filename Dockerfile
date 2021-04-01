# Use NodeJS base image
FROM node:14.16.0-alpine3.10

WORKDIR usr/src/app

ADD package.json /usr/src/app

RUN npm install -no-package-lock

RUN npm install -g typescript

COPY . .

RUN tsc

EXPOSE 8080

CMD ["npm", "run", "prod"]