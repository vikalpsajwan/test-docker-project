  
FROM node:8.0.0

WORKDIR /var/www/
ADD . .

COPY ./update-command /usr/bin/

EXPOSE 8000
CMD ["node","server.js"]


# docker build --tag test-docker-project .  
# docker run --publish 8000:8000 --name test-docker-container test-docker-project
# docker exec -it test-docker-container update-command
