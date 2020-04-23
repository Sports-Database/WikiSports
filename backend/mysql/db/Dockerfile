FROM mysql:8

ENV MYSQL_DATABASE=wiki_sports
ENV MYSQL_USER=wiki-sport-main
ENV MYSQL_PASSWORD=wikisport
ENV MYSQL_ROOT_PASSWORD=password

COPY ./init_db.sql /docker-entrypoint-initdb.d/
COPY ./teams/ /docker-entrypoint-initdb.d/
COPY ./create_stuff/ /docker-entrypoint-initdb.d/
COPY ./update_stuff/ /docker-entrypoint-initdb.d/
