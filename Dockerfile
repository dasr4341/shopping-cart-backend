FROM node:16
WORKDIR ./
COPY package*.json ./
COPY yarn.lock ./
RUN yarn install
COPY . ./
RUN yarn build
EXPOSE 3000
# CMD ["node", "build/index.js"]

# FROM node:alpine
# WORKDIR ./
# COPY package*.json .
# RUN yarn install
# COPY . .
# CMD ["npm", "dev"]




