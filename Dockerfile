# Use the official Python image from the Docker Hub
FROM node:lts-alpine

# Set the working directory in the container
WORKDIR /app

COPY ./node_modules ./node_modules

COPY package*.json ./

RUN yarn install

COPY . .

CMD [ "yarn", "start" ]
