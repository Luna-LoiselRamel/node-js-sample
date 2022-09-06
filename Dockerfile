FROM node:latest

# Mise à jour des repository distant du container, avant d'installer les paquets requis pour le projet
RUN apt-get update -yq && apt-get install curl gnupg -yq 

ADD . /app/
WORKDIR /app
RUN npm install

EXPOSE 8080

CMD node ./bin/www