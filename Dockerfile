FROM node:20

WORKDIR /app

COPY package.json ./

RUN yarn install

COPY . .

# VOLUME ["/app/logs"]

EXPOSE 5002

CMD ["yarn", "dev"]