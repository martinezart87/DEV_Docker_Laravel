ARG PHP_V

FROM lscr.io/linuxserver/code-server:latest

RUN apt-get update && apt-get install -y \
        npm \
        curl \
        software-properties-common

RUN add-apt-repository ppa:ondrej/php
RUN apt update
RUN apt -y install php${PHP_V}

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

COPY settings.json /usr/local/bin/settings.json
COPY vscode.sh /usr/local/bin/

CMD ["sh", "/usr/local/bin/vscode.sh"]