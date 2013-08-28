source "http://rubygems.org"
gemspec

gem 'activerecord', '>= 2.3.12', '< 4.0'
gem 'activesupport', '>= 2.3.12', '< 4.0'
gem 'sinatra', '~> 1.4.3'
gem 'crypt-isaac'
gem 'sinatra-r18n'

# Gems for authenticators
group :ldap do
  gem 'net-ldap'
end

group :active_resource do
  gem "activeresource", ">= 2.3.12", "< 4.0"
end

group :postgresql do
  gem 'pg', '~> 0.15'
  gem "activerecord-postgresql-adapter"
end

group :development, :test do
  gem 'rack-test'
  gem 'capybara', '1.1.2'
  gem 'rspec'
  gem 'rspec-core'
  gem 'rake', '~> 0.9.3'
  gem 'sqlite3', '~> 1.3.1'
  gem 'appraisal', '~> 0.5.2'
  gem 'guard', '~> 1.4.0'
  gem 'guard-rspec', '2.0.0'
  gem 'webmock', '~> 1.8'
  gem 'nokogiri', '~> 1.3'
end

group :osx_test do
  gem "rb-fsevent", "~> 0.9.2"
end

group :linux_test do
  gem "rb-inotify", "~> 0.8.8"
end

group :windows_test do
  if RUBY_VERSION >= '1.9.2'
    gem 'wdm', '~> 0.0.3'
  end

  gem 'win32console', "~> 1.3.2"
end
