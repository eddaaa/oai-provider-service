FROM node:18

WORKDIR /home/node/app

COPY package*.json ./
RUN npm install -g npm@10.8.1

COPY . .
 # RUN npm run clean
RUN npm run compile
RUN npm run distclean

CMD ["npm", "start"]
