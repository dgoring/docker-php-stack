# php8.1-fpm + apache2 + mariadb
Docker image based on the image `php:8.1-fpm` with apache added on, this is for my personal use but if you have any suggestions please add an issue or create a pull request

## included packeges
### php extentions:
* curl
* dom
* exif
* gd
* iconv
* mysqli
* mbstring
* pdo_mysql
* readline
* tidy
* zip

this package also includes Composer, crontab and supervisord
utilities

## Usage
```yaml
  web:
    image: dgoring/php-stack:8.1-apache
    restart: always
    volumes:
      # 1. mount your workdir path
      - /site:/site
      # 2. mount your configuration files
      - /config:/config
    environment:
      MYSQL_DATABASE: 'development'
      MYSQL_USERNAME: 'development'
      MYSQL_PASSWORD: 'secret'
```
optional config files

- *.conf for apache host config
- *.run for supervisord program
- *.fpm for php-fpm lister
- *.ini for php.ini file
- crontab for Cron settings

examples of which can be found in this repository

### note
This image has it's own fpm which runs on 127.0.0.1:9000
if you want to set your own you need to add the proxy in your host file
and set your fpm listener to a file or different port
```vhost
  <IFModule mod_proxy_fcgi.c>
  <FilesMatch "\.php\d?$">
      SetHandler  "proxy:fcgi://127.0.0.1:8000"
  </FilesMatch>
</IfModule>
```

### Extending
Note the default user is `www-data` so you need to prefix commands with `sudo` i.e.
```conf
RUN sudo apt-get install package-name
```
