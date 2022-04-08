#!/bin/sh -l

composer install --no-ansi --no-progress --no-suggest --no-interaction --optimize-autoloader --ignore-platform-reqs

sudo locale-gen en_GB.UTF-8
sudo update-locale LANG=en_GB.UTF-8

export APP_ID="Test"
php ./custom/vendor/bin/phpunit -c phpunit.xml ./custom/tests/unit/ --exclude-group using_db_migrations,github_workflow_exclude