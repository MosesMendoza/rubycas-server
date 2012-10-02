require 'rubygems'
require 'bundler/setup'

$:.unshift "#{File.dirname(__FILE__)}/lib"
require "casserver"

unless CASServer::Server.config['session_secret'].nil?
  use Rack::Session::Cookie,
    :key    => 'tgt',
    :path   => '/cas',
    :secret => CASServer::Server.config['session_secret']
end

use Rack::ShowExceptions
use Rack::Runtime
use Rack::CommonLogger

run CASServer::Server.new
