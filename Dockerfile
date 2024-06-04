# Our node app is based on `18-alpine` image 
FROM node:18-alpine

# Setting up the environment variables needed:
ENV DOMAIN="http://10-0-31-34:3000" \
PORT=3000 \
STATIC_DIR="./client" \
PUBLISHABLE_KEY="AKIAVJGXZVHWLVD4HSNB" \
SECRET_KEY="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"

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]
