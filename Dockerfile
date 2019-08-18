FROM alpine:3.10

RUN apk --no-cache add php7 php7-fpm php7-mysqli php7-json php7-openssl php7-curl php7-openssl \
    php7-zlib php7-xml php7-phar php7-intl php7-dom php7-xmlreader php7-ctype php7-session php7-zip \
    php7-mbstring php7-gd php7-pgsql php7-sqlite3 php7-ftp php7-bcmath php7-bz2 php7-iconv  curl

CMD ["php-fpm7","-F","-O"]
