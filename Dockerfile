
FROM node:bookworm-slim
ENV NODE_ENV=production

WORKDIR /app

COPY package.json ./
COPY vendor/ ./vendor/
COPY patches/ ./patches/

RUN npm install

COPY . .

CMD ["node", "src/server.js"]
