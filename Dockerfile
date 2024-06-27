# FROM node:18

# WORKDIR /home/node/app

# COPY package*.json ./
# RUN npm install -g npm@10.8.1

# COPY . .
# RUN npm run clean
# RUN npm run compile
# RUN npm run distcleancurl http://localhost:7005

# CMD ["npm", "start"]

FROM node:18

WORKDIR /home/node/app

# Install global dependencies
RUN npm install -g gulp-cli

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your files
COPY . .

# Copy environment example to .env
# COPY ENV_EXAMPLE ./.env

# Compile your application
RUN npm run compile

CMD ["npm", "start"]
