require 'em-synchrony'
require 'em-synchrony/activerecord'

database_config = {
  adapter: 'em_mysql2',
  host: 'boot2docker',
  username: 'root',
  password: 'root',
  database: 'test',
  pool: 10,
}

ActiveRecord::Base.establish_connection database_config

autoload :User, './user.rb'

EM.synchrony do
  User
  p 'ok'
  EM.stop
end
