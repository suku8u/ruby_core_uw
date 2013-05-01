$LOAD_PATH.unshift File.expand_path("../travel_dist",__FILE__)

require 'dist_result'
require 'dist_source'
require 'travel_dist'
require 'version'

module Maps
  puts " "
  puts "module Maps has Class Travel_dist which has methods to calcualte Driving distance and Driving time"
  puts "it looks for source tables defined and it writes to a result tables mentioned in configuration file"
  puts "/* select dist.* from dist_results dist */ this SQL will give the results from database"
  puts " "
end