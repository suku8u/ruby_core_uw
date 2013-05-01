$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'maps'

# TODO: Below, change the gem name, authors, and email

Gem::Specification.new do |s|
  s.name        = 'maps_gem'
  s.version     = Maps::VERSION
  s.date        = '2013-03-06'
  s.summary     = "Maps gem will help you calculate Travel Dist"
  s.description = "This gem will currently calculate Travel Dist from source of Latitudes & Longitudes stored in a database"
  s.authors     = ["Sukumar Ponram"]
  s.email       = 'suku8u@uw.edu'
  s.homepage    = 'http://rubygems.org/gems/maps'
  s.files       = ["lib/maps.rb", "lib/travel_dist/version.rb", "lib/travel_dist/dist_result.rb","lib/travel_dist/dist_source.rb","lib/travel_dist/travel_dist.rb"]
  s.executables << 'maps_gem'
end
