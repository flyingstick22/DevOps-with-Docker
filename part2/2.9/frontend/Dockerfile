FROM node:16

EXPOSE 5000

WORKDIR /usr/src/app
#ENV REACT_APP_BACKEND_URL=http://localhost:8080
ENV REACT_APP_BACKEND_URL=http://localhost/api


COPY . .

RUN npm install
RUN npm run build
RUN npm install -g serve

CMD  ["serve", "-s", "-l", "5000", "build"]
