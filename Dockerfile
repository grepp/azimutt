FROM node:16-alpine

WORKDIR /app
COPY . .
RUN npm i -g elm-live@4.0.0 elm-spa@6.0.4
RUN npm ci
EXPOSE 8282
CMD ["npm", "run", "dev"]
