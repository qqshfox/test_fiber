require 'active_record'

#create table users (`id` int primary key);
class User < ActiveRecord::Base
end

COLUMNS = User.columns # This line is important
