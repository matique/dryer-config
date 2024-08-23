# DryerConfig

[![Gem Version](https://badge.fury.io/rb/dryer-config.png)](http://badge.fury.io/rb/dryer-config)

Contains most of the files of a pristine `rails new` `config` directories.
They will be available to your application by
the engine nature of this gem.

Your private `config` directory (and your repository)
will contain just your particular requirements/options
(e.g. `config/database.yml`).

Version numbering is according to the Rails versions, e.g. use

    gem 'dryer-config', '= 7.0.0'  # for a Rails 7.0.0 applications

or

    gem 'dryer-config', '~> 7.2'   # expected to serve Rails 7.2.*

in your `Gemfile`.

It is expected that the version 7.0.0 is fine for the
complete Rails 7 serie.
If not, a new version of this gem will be released (hopefully).

## Why

Usually I run several applications based on the same Rails on one server.
There is no need to waste disk space (mostly irrelevant today,
but I still don't like wasting).

Several `config` files will be out of the way (less attention)
for the developer.

Lastly, during the port of a Rails application to another version
a pristine configuration is handy.
The few remaining options in your `config` files needs
less attention/work.

## Installation

As usual:
```ruby
# Gemfile
gem "dryer-config", "~> 7.2"
```
and run `bundle install`.

## Rails 7.2.1, 7.2.0

See also "Configuration" below.

The following config file is obsolete:
    ./config/spring.rb

## Rails 7.1.0, 7.0.0, 6.0.0, 5.2.0

See also "Configuration" below.

Create your own (there are still there for inspection):

    ./config/storage.yml

The Webpacker files may require your attention:

Configuration
-------------

The following original config files have been dropped:

    ./config/application.rb
    ./config/credentials.yml.enc
    ./config/locales/*
    ./config/master.key
    ./config/routes.rb

Create your owns.

The following files may require your attention:

    ./config/boot.rb
    ./config/cable.yml
    ./config/database.yml
    ./config/puma.rb
    ./config/storage.yml

Create/copy your owns. They are still there for inspection.

The following file requires your attention:

    ./config/initializers/assets.rb

Create your own. It will run after the one from the gem.

## See also

    http://railsdiff.org/

## Miscellaneous

Copyright (c) 2016-2024 Dittmar Krall (www.matiq.com),
released under the [MIT license](https://opensource.org/licenses/MIT).
