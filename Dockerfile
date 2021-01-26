FROM node
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
USER node
CMD [ "node", "index.js" ]