$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

ENV['RACK_ENV'] = 'test'

require 'rubygems'
require 'rspec/core'
require 'sinatra'
require 'rack/test'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

require 'app'


# set test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

RSpec.configure
