FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y

COPY package.json .

RUN npm install

CMD ["npm", "start"]

RUN npm start

