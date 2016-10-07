teachphp

Konfigurasi container Docker untuk mengajar mata kuliah pemrograman web 
menggunakan php.

Membentuk 4 buah container pada network tersendiri, yaitu:
1. frontend - server nginx, berfungsi sebagai reverse proxy ke container 
              backend PHP
2. backend  - server php-fpm plus library mysql untuk mengeksekusi script
              php
3. db       - database server mysql
4. phpmyadmin - container phpmyadmin untuk mengelola database mysql

network:
- teaching - network mandiri untuk konfigurasi container docker ini
