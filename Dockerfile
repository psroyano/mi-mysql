FROM mysql:latest

LABEL maintainer="Pedro Santos" \
      version="1.0"

COPY ./init.sql /docker-entrypoint-initdb.d/init.sql
COPY ./dataset /dataset
RUN echo "[mysqld] \n local_infile=1 \n [client] \n loose-local-infile=1" >> /etc/mysql/conf.d/mysql.cnf

