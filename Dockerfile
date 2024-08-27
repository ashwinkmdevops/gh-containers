FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME github-action-1
ENV MONGODB_CLUSTER_ADDRESS github-action-1.gtlmo.mongodb.net
ENV MONGODB_USERNAME ashwinkmdevops
ENV MONGODB_PASSWORD sXUxfzFZor6CPZYw

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]