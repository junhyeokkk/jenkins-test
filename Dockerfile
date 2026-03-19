FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# 핵심: 권한 강제 부여
RUN chmod +x node_modules/.bin/tsc || true

RUN node node_modules/typescript/bin/tsc

CMD ["node", "dist/index.js"]