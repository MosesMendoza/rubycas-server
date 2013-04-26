# RubyCAS-Server

## Copyright

Portions contributed by Matt Zukowski are copyright (c) 2011 Urbacon Ltd.
Other portions are copyright of their respective authors.

## Authors

See https://github.com/rubycas/rubycas-server/commits

## Puppet Labs Installation

Example with Postgres database:

1. `git clone git://github.com/puppetlabs/rubycas-server.git`
2. `cd rubycas-server`
3. `cp config/config.puppet.yml config.yml`
4. Customize your server by modifying the `config.yml` file. It is well commented but make sure that you take care of the following:
    1. Verify the database adapter is `postgresql`
    2. Make sure at least one authenticator is configured
    3. Make sure the log file location has `+w`
5. Run `bundle install`
6. `bundle exec rubycas-server -c config.yml`

Your RubyCAS-Server should now be running. Once you've confirmed that everything looks good, try switching to a [Passenger](http://www.modrails.com/) deployment. You should be able to point Apache (or whatever) to the `rubycas-server/public` directory, and everything should just work.

Some more info is available at the [RubyCAS-Server Wiki](https://github.com/rubycas/rubycas-server/wiki).

If you have questions, try the [RubyCAS Google Group](https://groups.google.com/forum/?fromgroups#!forum/rubycas-server) or #rubycas on [freenode](http://freenode.net).

## Testing

Run `bundle exec rspec` - don't use `rake`.

## License

RubyCAS-Server is licensed for use under the terms of the MIT License.
See the LICENSE file bundled with the official RubyCAS-Server distribution for details.
