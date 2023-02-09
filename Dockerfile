FROM node:14

WORKDIR /webide
COPY package*.json ./
RUN npm install .
COPY . .
RUN npm run release
RUN npm run build-website
EXPOSE 9000 8088

CMD [ "npm", "run", "simpleserver" ]
