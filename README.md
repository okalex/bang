# bang

Bang is a command-line tool to start development app servers in a number of languages. To start
a server, simply navigate to the app directory and type `bang`. This will start the server on
localhost, port 8080 by default.

## Options

* --port=<number>, -p <number> Specify a different port number
* --dir=<app dir>, -d <app dir> Specify an app directory other than the current working directory

## Supported languages

* PHP - bang looks for an index.php file
* Rack - Bang looks for a config.ru file
* Node - Bang looks for app.js or server.js files
* Static - All other types will currently be served as static files. This allows you to serve static
  sites through a server easily

## Installation

Installation is currently rudimentary. Just clone bang by running `git clone git@github.com:okalex/bang.git`
and add `bang/bin` to your path. You will also need to `cd` to the bang directory and run `bundle install`.
This will be improved in the future.
