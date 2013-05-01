require 'rubygems'
require 'active_record'
require 'mysql2'
require 'yaml'
require 'logger'

db_config = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection(db_config)
ActiveRecord::Base.logger = Logger.new(File.open('log/database.log', 'w'))

if ActiveRecord::Schema.tables.include?("dist_sources")
  puts 'Table already exist in database. Please rename or drop the table.'
  puts 'You can run drop_tables rake task to drop the tables'
  puts 'You can also provide a new database name in /config/database.yml file'

elsif ActiveRecord::Schema.tables.include?("dist_results")
  puts 'Table already exist in database. Please rename or drop the table.'
  puts 'You can run drop_tables rake task to drop the tables'
  puts 'You can also provide a new database name in /config/database.yml file'

else
ActiveRecord::Schema.define do
  
  create_table :dist_sources do |table|
    table.column :origin_lat, :string
    table.column :origin_lon, :string
    table.column :destination_lat, :string
    table.column :destination_lon, :string
  end
  
  create_table :dist_results do |table|
    table.column :origin_lat, :string
    table.column :origin_lon, :string
    table.column :destination_lat, :string
    table.column :destination_lon, :string
    table.column :driving_dist, :string
    table.column :driving_time, :string
  end
end
end