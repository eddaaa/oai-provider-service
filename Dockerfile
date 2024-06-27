FROM node:18

WORKDIR /home/node/app

COPY package*.json ./
# COPY . /home/node/app/

COPY . .
RUN npm install -g npm@10.8.1
RUN npm run clean
# RUN npm ci
RUN npm run compile
RUN npm run distclean

CMD ["npm", "start"]
