ARG PHP_V

FROM lscr.io/linuxserver/code-server:latest

RUN apt-get update && apt-get install -y \
        npm \
        curl \
        software-properties-common

RUN add-apt-repository ppa:ondrej/php
RUN apt update
RUN apt -y install php${PHP_V}
RUN apt -y install php-xml
RUN apt -y install php-curl
RUN apt -y install zip unzip php-zip
RUN apt -y install php-mysql

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

COPY settings.json /usr/local/bin/settings.json
COPY vscode.sh /usr/local/bin/

CMD ["sh", "/usr/local/bin/vscode.sh"]
