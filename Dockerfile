FROM php:7.4-cli

LABEL version="1.0"
LABEL repository="https://github.com/chindit/actions-phpcs"
LABEL homepage="https://github.com/chindit/actions-phpcs"
LABEL maintainer="David Lumaye <littletiger58@gmail.com>"

RUN curl -L https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar -o /phpcs

COPY "entrypoint.sh" "/entrypoint.sh"

RUN chmod +x /entrypoint.sh && chmod a+x /phpcs
ENTRYPOINT ["/entrypoint.sh"]
