# use image from node with tage 14-alpine
FROM node:14-alpine

# create directory app and change current directory to it
WORKDIR /app

# copy all files from to current directory container
COPY . .

# set environment variables for node enviroment & db host
ENV NODE_ENV=production DB_HOST=item-db

# install packages & build project
RUN npm install --production --unsafe-perm && npm run build

# run app
CMD ["npm", "start"]

# publish port
EXPOSE 8080