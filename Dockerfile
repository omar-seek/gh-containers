FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS githubactions2.ljk9dqt.mongodb.net
ENV MONGODB_USERNAME omar
ENV MONGODB_PASSWORD secret

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]