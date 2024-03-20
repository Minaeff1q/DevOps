#!/bin/bash

# Задаем пароль для пользователя root
export MYSQL_ROOT_PASSWORD="1507"

# Ожидаем, пока MariaDB будет доступна
until mysql -h localhost -uroot -p$MYSQL_ROOT_PASSWORD -e ";" ; do
    echo "MariaDB is unavailable - sleeping"
    sleep 1
done

# Создаем тестовую базу данных и пользователя
mysql -h localhost -uroot -p$MYSQL_ROOT_PASSWORD <<EOF
CREATE DATABASE IF NOT EXISTS testdb;
CREATE USER 'testuser'@'%' IDENTIFIED BY 'testpassword';
GRANT ALL PRIVILEGES ON testdb.* TO 'testuser'@'%';
FLUSH PRIVILEGES;
EOF

echo "Test database and user created successfully."