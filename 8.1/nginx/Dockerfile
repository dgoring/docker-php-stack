FROM dgoring/php:8.1-nginx

MAINTAINER David Goring

RUN sudo apt-get update --allow-releaseinfo-change \
 && sudo apt-get install -y --no-install-recommends \
    mariadb-server

# RUN sudo /usr/bin/mysql_secure_installation

COPY etc/ /etc/

COPY create_database.sh /
RUN sudo chmod o+x /create_database.sh

COPY run_override.sh /
RUN sudo chmod o+x /run_override.sh

EXPOSE 3306

ENTRYPOINT ["/run_override.sh"]
