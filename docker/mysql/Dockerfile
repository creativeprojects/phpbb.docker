FROM mysql/mysql-server:5.5

ENV MYSQL_ROOT_PASSWORD=MysqlRootPassword
ENV MYSQL_DATABASE=phpbb
ENV MYSQL_USER=phpbb
ENV MYSQL_PASSWORD=phpbb

EXPOSE 3306

COPY phpbb.sql /docker-entrypoint-initdb.d/
