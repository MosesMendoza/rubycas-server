$gemspec = Gem::Specification.new do |s|
  s.name     = 'rubycas-server'
  s.version  = '1.1.3.pre'
  s.authors  = ["Matt Zukowski"]
  s.email    = ["matt@zukowski.ca"]
  s.homepage = 'https://github.com/rubycas/rubycas-server'
  s.platform = Gem::Platform::RUBY
  s.summary  = %q{Provides single sign-on authentication for web applications using the CAS protocol.}
  s.description  = %q{Provides single sign-on authentication for web applications using the CAS protocol.}

  s.files  = [
    "CHANGELOG", "LICENSE", "README.md", "Rakefile",
    "bin/*", "db/**/*", "lib/**/*.rb", "public/**/*", "locales/**/*", "resources/*.*",
    "config.ru", "config/**/*", "tasks/**/*.rake", "lib/**/*.erb", "lib/**/*.builder",
    "Gemfile", "rubycas-server.gemspec"
  ].map{|p| Dir[p]}.flatten

  s.test_files = `git ls-files -- spec`.split("\n")

  s.executables = ["rubycas-server"]
  s.bindir = "bin"
  s.require_path = "lib"

  s.extra_rdoc_files = ["CHANGELOG", "LICENSE", "README.md"]

  s.has_rdoc = true
  s.post_install_message = "For more information on RubyCAS-Server, see http://rubycas.github.com"

  s.rdoc_options = [
    '--quiet', '--title', 'RubyCAS-Server Documentation', '--opname',
    'index.html', '--line-numbers', '--main', 'README.md', '--inline-source'
  ]
end
