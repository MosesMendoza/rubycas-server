begin
  require 'appraisal'
  Dir['tasks/**/*.rake'].each { |rake| load rake }
rescue LoadError
  STDERR.puts "Oh no, now we can't run tests with bundler and rake."
end

require 'rubygems'
require 'rake'

RAKE_ROOT = File.dirname(__FILE__)

# Load tasks for packaging automation
begin
  load File.join(RAKE_ROOT, 'ext', 'packaging', 'packaging.rake')
rescue LoadError
end

Dir[ File.join(RAKE_ROOT, 'lib', 'tasks', '*') ].sort.each { |t| load t }
