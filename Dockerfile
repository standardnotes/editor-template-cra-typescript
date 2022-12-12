FROM node:16-alpine as build

WORKDIR /app
COPY package*.json ./
COPY yarn.lock ./
RUN yarn install
COPY . .

EXPOSE 8001
CMD ["yarn", "start"]
