FROM node:18-alpine

WORKDIR /home/app

COPY .env ./

COPY package*.json ./

RUN yarn install

COPY . .

EXPOSE 8002

CMD ["yarn", "dev"]