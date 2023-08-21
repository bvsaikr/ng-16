FROM node:18-alpine AS build
RUN mkdir -p /usr/src/app
WORKDIR usr/src/app
COPY package*.json ./
RUN npm install @angular/cli
COPY . .
RUN ng build
EXPOSE 4200
ENTRYPOINT ["ng", "serve"]
