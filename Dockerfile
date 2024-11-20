FROM node:18.20.5

RUN npm install -g npm@9.1.3

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install

EXPOSE 8080
ghg
CMD [ "node", "index.js" ]
