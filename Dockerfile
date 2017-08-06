FROM node:8

COPY ./app /app
WORKDIR /app

EXPOSE 3000

CMD ["node","app.js"]

