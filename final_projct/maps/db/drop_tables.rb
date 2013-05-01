require 'rubygems'
require 'active_record'
require 'mysql2'
require 'yaml'
require 'logger'

db_config = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection(db_config)
ActiveRecord::Base.logger = Logger.new(File.open('log/database.log', 'w'))


if ActiveRecord::Schema.tables.include?("dist_sources")
 ActiveRecord::Migration.drop_table :dist_sources
 puts "dist_sources table deleted"
 
else 
   puts "dist_sources table doesnt exsist"
end

if ActiveRecord::Schema.tables.include?("dist_results")
  ActiveRecord::Migration.drop_table  :dist_results
  puts "dist_results table deleted"
  
else 
 puts "dist_results table doesnt exsist"
 
end
  


 