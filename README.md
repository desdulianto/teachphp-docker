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

Persyaratan:
- docker engine
- docker compose

Cara pakai:
- edit terlebih dahulu docker-compose.yml
- perhatikan konfigurasi volume
- buat directory yang dibutuhkan sesuai dengan volume yang didefiniskan di
  docker-compose (minimal butuh directory logs dan public_html)
- jalankan perintah docker-compose up untuk membangunkan mengaktifkan seluruh
  container
- akses web melalui http://localhost
- akses phpmyadmin melalui http://localhost:8080
