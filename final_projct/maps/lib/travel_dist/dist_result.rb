require 'rubygems'
require 'active_record'
require 'mysql2'
require 'yaml'
require 'logger'

module Maps

  db_config = YAML::load(File.open('config/database.yml'))
  ActiveRecord::Base.establish_connection(db_config)
  ActiveRecord::Base.logger = Logger.new(File.open('log/database.log','w'))

  class Dist_result < ActiveRecord::Base
  end

end