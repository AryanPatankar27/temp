FROM node:19-alpine

WORKDIR /app/

COPY package.json .
RUN npm install

COPY . .

ENV NODE_ENV development

EXPOSE 3000
CMD ["npm", "start"]