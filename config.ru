require 'rubygems'
require 'bundler/setup'

$:.unshift "#{File.dirname(__FILE__)}/lib"
require "casserver"

use Rack::Session::Cookie,
  :key    => 'tgt',
  :path   => '/cas',
  :secret => CASServer::Server.config['session_secret']

use Rack::ShowExceptions
use Rack::Runtime
use Rack::CommonLogger

run CASServer::Server.new
