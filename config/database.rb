
## example config for using mongodb and mongo_mapper gem.
## customize to suit your database.  If using mongodb, make sure
## to populate the mongo.yaml file.

# require 'mongo_mapper'
# 
# environment = ENV['RACK_ENV'] || 'development'
# my_path = File.expand_path(File.dirname(__FILE__))
# 
# config = YAML.load_file(File.join(my_path, 'mongo.yaml'))
# 
# if config[environment]
#   mongo_config = config[environment]
#   MongoMapper.connection = Mongo::Connection.new(mongo_config['host'], mongo_config['port'], 
#                                                  :pool_size => mongo_config['pool_size'],
#                                                  :pool_timeout => 5)
#   MongoMapper.database = mongo_config['db']
#   if mongo_config['user'] and mongo_config['pass']
#     MongoMapper.database.authenticate( mongo_config['user'], mongo_config['pass'] )
#   end
# else
#   raise "no config found in #{my_path}/mongo.yaml for RACK_ENV '#{environment}'"
# end
# 
# if defined?(PhusionPassenger)
#   PhusionPassenger.on_event(:starting_worker_process) do |forked|
#     MongoMapper.connection.connect_to_master if forked
#   end
# end