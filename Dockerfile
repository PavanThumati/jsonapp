FROM node:latest-alpine

WORKDIR /app

COPY package*.json /app

RUN npm install -omit=dev && npm install express

COPY . /app

EXPOSE 3000
CMD ["npm", "app.js"]
