FROM node:15.12.0-alpine3.13 as builder
WORKDIR /usr/src/app

COPY package.json .
COPY yarn.lock .
RUN yarn install --pure-lockfile --non-interactive

COPY . .

RUN yarn build

EXPOSE 3000
CMD ["yarn", "start"]
