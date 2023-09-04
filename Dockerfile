FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.gpuvty3.mongodb.net
ENV MONGODB_USERNAME mohsin4learntech
ENV MONGODB_PASSWORD li52I4lP3DtW5lL7

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]