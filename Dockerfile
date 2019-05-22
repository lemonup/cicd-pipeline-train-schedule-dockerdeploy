FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
RUN chmod +x /usr/src/app
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]
