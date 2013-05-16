source "http://rubygems.org"
gemspec


# Gems for authenticators
group :ldap do
    gem "net-ldap", "~> 0.1.1"
end

group :active_resource do
  gem "activeresource", ">= 2.3.12", "< 4.0"
end

group :postgresql do
  gem 'pg', '~> 0.15'
  gem "activerecord-postgresql-adapter"
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