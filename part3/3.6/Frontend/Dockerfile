FROM node:16

EXPOSE 5000

WORKDIR /usr/src/app

ENV REACT_APP_BACKEND_URL=http://localhost:8080

COPY . .

RUN npm install && npm run build && npm install -g serve && useradd -m Maija && apt-get purge -y --auto-remove curl && rm -rf /var/lib/apt/lists/*

USER Maija

CMD  ["serve", "-s", "-l", "5000", "build"]
