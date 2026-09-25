FROM node:24-alpine

WORKDIR /divino_paolo_site

COPY package.json package-lock.json ./

RUN npm ci

COPY . .

ENV HOST=0.0.0.0
ENV PORT=3000
ENV BROWSER=none

EXPOSE 3000

CMD ["npm", "start"]