FROM debian:bullseye-slim

WORKDIR /app

COPY . .

RUN chmod +x globed-central-server-x64 globed-game-server-x64 playit-linux-amd64

CMD ./playit-linux-amd64 -s & ./globed-central-server-x64 & ./globed-game-server-x64 127.0.0.1:8300 https://[yourproject].onrender.com SuperSecretPassword
