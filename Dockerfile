FROM node:20

WORKDIR /app

RUN npm install -g yarn

COPY package.json yarn.lock ./
RUN yarn install

COPY . .

EXPOSE 5001

CMD ["yarn", "dev"]