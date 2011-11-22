require 'sinatra/base'
require 'sinatra/accept_params'

# backport require_relative for ruby 1.8 compat
unless Kernel.respond_to?(:require_relative)
  module Kernel
    def require_relative(path)
      require File.join(File.dirname(caller[0]), path.to_str)
    end
  end
end

require_relative 'routes/init'
require_relative 'helpers/init'
require_relative 'models/init'

class MyApp < Sinatra::Base
  include Sinatra::AcceptParams::Helpers
  
  set :environment, :production

  # start the server if ruby file executed directly
  run! if app_file == $0
end
