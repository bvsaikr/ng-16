FROM node:18-alpine AS build
RUN mkdir -p /usr/src/app
WORKDIR usr/src/app
COPY package*.json ./
RUN npm install @angular/cli
COPY . .
RUN npm build
EXPOSE 4200
ENTRYPOINT ["npm", "start"]
