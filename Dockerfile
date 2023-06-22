# use image from node with tag 14-alpine
FROM node:14-alpine

# create directory app and change current directory to it
WORKDIR /app

# copy package.json from current directory to /app container
COPY package.json .

# add index.js from current directory to /app container
ADD index.js .

# set environment variables for port app & rabbit host
ENV PORT=3000 AMQP_URL=amqp://localhost:5672

# install packages
RUN npm install

# run app
CMD ["npm", "run", "start"]

# publish port
EXPOSE 3000