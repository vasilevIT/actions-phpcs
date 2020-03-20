#!/bin/sh
set -e

PHP_FULL_VERSION=$(php -r 'echo phpversion();')

if [ -z "$1" ]; then
  DIR_TO_SCAN="."
else
  DIR_TO_SCAN="./$1"
fi

echo "## Running PHPCS on ${DIR_TO_SCAN}"
echo "PHP Version : ${PHP_FULL_VERSION}"

if [ ! -d "${DIR_TO_SCAN}" ] && [ ! -f "${DIR_TO_SCAN}" ]; then
  echo "FALLBACK E${DIR_TO_SCAN}E"
  echo `ls`
  echo `pwd`
  php -d memory_limit=-1 /phpcs -pv
  echo "\nInvalid directory or file: ${DIR_TO_SCAN}"
  echo "\n\n"

  exit 2
fi

echo "php -d memory_limit=-1 /phpcs ${DIR_TO_SCAN} -pv"
php -d memory_limit=-1 /phpcs ${DIR_TO_SCAN} -pv
