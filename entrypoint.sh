#!/bin/sh
set -e

PHP_FULL_VERSION=$(php -r 'echo phpversion();')


echo "## Running PHPCS"
echo "PHP Version : ${PHP_FULL_VERSION}"

php -d memory_limit=-1 /phpcs -v -p
