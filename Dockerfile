FROM node:latest

RUN mkdir /app

CMD echo "HERE"
CMD pwd

COPY app /app
COPY .babelrc /.babelrc
COPY package.json /package.json
COPY webpack.config.js /webpack.config.js

CMD echo "COPIED!"
RUN npm install

EXPOSE 8080

CMD npm start