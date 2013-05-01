Driving Distance between two locations

**SUMMARY:**

This ruby gem will calculate Driving Distance between two locations.

**PREREQ:**

For this gem to work you need to have mySQL database installed in your computer.

You can use the the following rake tasks to create required tables in the database you prefer.
 
 rake create_table
 
refer to the ./db/dml.sql file sample insertion of data to source table.

Also, change the ./config/database.yml file to connect to your own database.


**INSTALLATION:**

gem install suku8u_maps_gem

**USAGE:**

require 'suku8u_maps_gem'

Maps::Travel_dist.calc

**To Do**

1. Create a class to use Google MAPS GEOCODE API to find latitude & Longitude and store it to a table
2. Create sample Database config files to make it compatible with Other databases (SQLServer, Oracle)

**Author**

Sukumar Ponram
suku8u@uw.edu

**Supported Rubies**
This library aims to support and is tested against the follow Ruby implementations:

Ruby 1.8.7
Ruby 1.9.2


**LICENSE**
(The MIT License)

Copyright (c) 2010 Franklin Webber

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

ruby -r "./lib/maps.rb" -e "Maps::Travel_dist.new.calc"

