FROM node:16-buster

RUN npm install -g npm

RUN install -d -m 0700 -o node -g node  /app

USER node
WORKDIR /app

COPY --chown=node:node package.json package-lock.json /app
RUN npm install

COPY --chown=node:node . /app
CMD [ "npm", "run", "dev" ]
