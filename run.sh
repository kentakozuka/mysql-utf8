#/bin/sh

# for SELinux
su -c "setenforce 0"

docker run \
		-it \
		-d \
		--name db \
		-v ${PWD}/db_data:/var/lib/mysql \
		-e MYSQL_ROOT_PASSWORD=root \
		-p 3306:3306 \
		mysql:5.7 \
		mysqld \
		--character-set-server=utf8 \
		--collation-server=utf8_unicode_ci
