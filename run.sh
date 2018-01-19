docker run \
		-it \
		-d \
		--name db \
		-v db_data:/var/lib/mysql \
		-e MYSQL_ROOT_PASSWORD=root \
		-p 3306:3306 \
		mysql:5.7 \
		mysqld \
		--character-set-server=utf8 \
		--collation-server=utf8_unicode_ci
