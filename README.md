# Simple docker image for local PHP development

Run this server with this command in the public dir of your local PHP app:

`docker run -it --name php56server -p 1298:8080 -v `pwd`:/usr/src/myapp -w /usr/src/myapp --link mariadb:mysql balintsera/php5-dev-srv`

If you don't need the mariadb/mysql as db, just drop the --link switch along with the mariadb:mysql param.

If the public directory is not the root of the repo, just change -w parameter to the appropriate directory: `-w /usr/src/myapp/web`.

You can access this server on http://localhost:1298

If you need another PHP version, fork this repository, change the FROM directive to its cli version, eg. `FROM php:7-cli`

