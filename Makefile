build/version: build/8.3-nginx build/8.3-apache build/8.2-nginx build/8.2-apache build/8.1-nginx build/8.1-apache build/8.0-nginx build/8.0-apache build/7.4-nginx build/7.4-apache build/7.3-nginx build/7.3-apache build/7.2-nginx build/7.2-apache build/7.1-nginx build/7.1-apache build/7.0-nginx build/7.0-apache build/5.6-nginx build/5.6-apache
	date > build/version

loggedin:
ifneq ($(grep -q "\"auth\"" ~/.docker/config.json),)
	@echo Please Login to Docker
	@exit 1
endif
ifneq ($(docker-machine active),)
	docker-machine start
endif

build/8.3-nginx: 8.3/nginx
	@make loggedin
	docker image build -t dgoring/php-stack:8.3-nginx ./8.3/nginx
	docker push dgoring/php-stack:8.3-nginx
	@date > ./build/8.3-nginx

build/8.3-apache: 8.3/apache
	@make loggedin
	docker image build -t dgoring/php-stack:8.3-apache ./8.3/apache
	docker push dgoring/php-stack:8.3-apache
	@date > ./build/8.3-apache

build/8.2-nginx: 8.2/nginx
	@make loggedin
	docker image build -t dgoring/php-stack:8.2-nginx ./8.2/nginx
	docker push dgoring/php-stack:8.2-nginx
	@date > ./build/8.2-nginx

build/8.2-apache: 8.2/apache
	@make loggedin
	docker image build -t dgoring/php-stack:8.2-apache ./8.2/apache
	docker push dgoring/php-stack:8.2-apache
	@date > ./build/8.2-apache

build/8.1-nginx: 8.1/nginx
	@make loggedin
	docker image build -t dgoring/php-stack:8.1-nginx ./8.1/nginx
	docker push dgoring/php-stack:8.1-nginx
	@date > ./build/8.1-nginx

build/8.1-apache: 8.1/apache
	@make loggedin
	docker image build -t dgoring/php-stack:8.1-apache ./8.1/apache
	docker push dgoring/php-stack:8.1-apache
	@date > ./build/8.1-apache

build/8.0-nginx: 8.0/nginx
	@make loggedin
	docker image build -t dgoring/php-stack:8.0-nginx ./8.0/nginx
	docker push dgoring/php-stack:8.0-nginx
	@date > ./build/8.0-nginx

build/8.0-apache: 8.0/apache
	@make loggedin
	docker image build -t dgoring/php-stack:8.0-apache ./8.0/apache
	docker push dgoring/php-stack:8.0-apache
	@date > ./build/8.0-apache

build/7.4-nginx: 7.4/nginx
	@make loggedin
	docker image build -t dgoring/php-stack:7.4-nginx ./7.4/nginx
	docker push dgoring/php-stack:7.4-nginx
	@date > ./build/7.4-nginx

build/7.4-apache: 7.4/apache
	@make loggedin
	docker image build -t dgoring/php-stack:7.4-apache ./7.4/apache
	docker push dgoring/php-stack:7.4-apache
	@date > ./build/7.4-apache

build/7.3-nginx: 7.3/nginx
	@make loggedin
	docker image build -t dgoring/php-stack:7.3-nginx ./7.3/nginx
	docker push dgoring/php-stack:7.3-nginx
	@date > ./build/7.3-nginx

build/7.3-apache: 7.3/apache
	@make loggedin
	docker image build -t dgoring/php-stack:7.3-apache ./7.3/apache
	docker push dgoring/php-stack:7.3-apache
	@date > ./build/7.3-apache

build/7.2-nginx: 7.2/nginx
	@make loggedin
	docker image build -t dgoring/php-stack:7.2-nginx ./7.2/nginx
	docker push dgoring/php-stack:7.2-nginx
	@date > ./build/7.2-nginx

build/7.2-apache: 7.2/apache
	@make loggedin
	docker image build -t dgoring/php-stack:7.2-apache ./7.2/apache
	docker push dgoring/php-stack:7.2-apache
	@date > ./build/7.2-apache

build/7.1-nginx: 7.1/nginx
	@make loggedin
	docker image build -t dgoring/php-stack:7.1-nginx ./7.1/nginx
	docker push dgoring/php-stack:7.1-nginx
	@date > ./build/7.1-nginx

build/7.1-apache: 7.1/apache
	@make loggedin
	docker image build -t dgoring/php-stack:7.1-apache ./7.1/apache
	docker push dgoring/php-stack:7.1-apache
	@date > ./build/7.1-apache

build/7.0-nginx: 7.0/nginx
	@make loggedin
	docker image build -t dgoring/php-stack:7.0-nginx ./7.0/nginx
	docker push dgoring/php-stack:7.0-nginx
	@date > ./build/7.0-nginx

build/7.0-apache: 7.0/apache
	@make loggedin
	docker image build -t dgoring/php-stack:7.0-apache ./7.0/apache
	docker push dgoring/php-stack:7.0-apache
	@date > ./build/7.0-apache

build/5.6-nginx: 5.6/nginx
	@make loggedin
	docker image build -t dgoring/php-stack:5.6-nginx ./5.6/nginx
	docker push dgoring/php-stack:5.6-nginx
	@date > ./build/5.6-nginx

build/5.6-apache: 5.6/apache
	@make loggedin
	docker image build -t dgoring/php-stack:5.6-apache ./5.6/apache
	docker push dgoring/php-stack:5.6-apache
	@date > ./build/5.6-apache

