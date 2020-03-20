#!/bin/sh
set -e

PHP_FULL_VERSION=$(php -r 'echo phpversion();')

if [ -z "$1" ]; then
  DIR_TO_SCAN="."
else
  DIR_TO_SCAN="$1"
fi

echo "## Running PHPCS on ${DIR_TO_SCAN}"	echo "## Running PHPCS"
echo "PHP Version : ${PHP_FULL_VERSION}"	echo "PHP Version : ${PHP_FULL_VERSION}"

if [ ! -d "${DIR_TO_SCAN}" ] && [ ! -f "${DIR_TO_SCAN}" ]; then	php -d memory_limit=-1 /phpcs -v
  echo "\nInvalid directory or file: ${DIR_TO_SCAN}"
  echo "\n\n"

  exit 2
fi

php -d memory_limit=-1 /phpcs ${DIR_TO_SCAN} -pv
