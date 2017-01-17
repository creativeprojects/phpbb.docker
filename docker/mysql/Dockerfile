FROM mysql/mysql-server:5.5

ENV MYSQL_ROOT_PASSWORD=MysqlRootPassword MYSQL_DATABASE=phpbb MYSQL_USER=phpbb MYSQL_PASSWORD=phpbb

EXPOSE 3306

COPY phpbb.sql /docker-entrypoint-initdb.d/
