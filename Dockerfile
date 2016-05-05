FROM node:4.4.3

RUN mkdir /app

CMD echo "HERE"
CMD pwd

COPY app /src/app
COPY .babelrc /src/.babelrc
COPY package.json /src/package.json
COPY webpack.config.js /src/webpack.config.js

WORKDIR /src

RUN npm install

EXPOSE 8080

CMD [ "npm", "start" ]