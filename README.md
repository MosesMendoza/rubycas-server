# STAHP

If you want to install `pe-puppet-dashboard` this is the first step.

# RubyCAS-Server

## Copyright

Portions contributed by Matt Zukowski are copyright (c) 2011 Urbacon Ltd.
Other portions are copyright of their respective authors.

## Authors

See https://github.com/rubycas/rubycas-server/commits

## Puppet Labs Installation

Example with Postgres database:

* Install Postgres
* Create a Postgres DB cluster if you don't already have one (note that for Postgres commands you may need to be the `postgres` user):
  * `initdb /usr/local/var/postgres -E utf8`
* Create the database needed for console auth, if it doesn't already exist:
  * `createdb console_auth`
* Check out the Puppet fork of `rubycas-server`:
  * `git clone git://github.com/puppetlabs/rubycas-server.git`
* Copy the example Puppet config file to the code root:
  * `cp config/config.puppet.yml config.yml`
* Customize your server by modifying the `config.yml` file. It is well commented but make sure that you take care of the following:
    1. Verify the database adapter is `postgresql` and that you have a working username and password.
    2. Add the same database credentials to the SQLEncrypted authenticator section.
    3. Make sure at least one authenticator is configured
    4. Make sure the log file location has `+w`
    5. Make sure `console_base_url` is set to the url for your dashboard (i.e. the IP for your server)
* Install the required gems (if you're running Linux, replace `linux_test` with `osx_test` in the `--without` flag):
  * `bundle install --without windows_test linux_test`
* Install the database tables for RubyCAS server (you may see a message from `rake` about an uninitialized constant, but this is after the database has been created and you can ignore it)
  * `bundle exec rake db:migrate` to
* Switch over to the `console_auth` project and install it: https://github.com/puppetlabs/console_auth
* Start RubyCAS server
  * `bundle exec rubycas-server -c config.yml`

## Testing

Run `bundle exec rspec` - don't use `rake`.

You need a postgres instance for the tests to pass. If you do not have a local postgres instance then you can point
the tests at postgres on VM with PE installed:
* Edit `/opt/puppet/var/lib/pgsql/9.2/data/postgresql.conf` and change the bottom `listen_addresses` to `'*'`
* Restart pe-postgresql: `service pe-postgresql restart`
* From your local machine, make sure you can `telnet <VM hostname> 5432`
* Copy over `/etc/puppetlabs/rubycas-server/config.yml` from your VM to `config.yml` on your local machine.
* Run `bundle exec rspec spec`

## License

RubyCAS-Server is licensed for use under the terms of the MIT License.
See the LICENSE file bundled with the official RubyCAS-Server distribution for details.
