FROM node:16-alpine

# RUN mkdir /code
 
WORKDIR /code

COPY package*.json .

RUN npm install

COPY . /code

# EXPOSE 5000

# CMD [ "npm", "run", "develop"]