$LOAD_PATH.unshift File.expand_path("../lib",__FILE__)
#$LOAD_PATH.unshift File.dirname(__FILE__)

require 'dist_calc'
require 'nokogiri'

describe 'Travel Distance Calculator' do
  
  subject {Dist.new}
  URL_STATIC = "http://maps.googleapis.com/maps/api/distancematrix/xml?"
  
    it '#should use distancematrix API' do
      output = URL_STATIC
      expected = "http://maps.googleapis.com/maps/api/distancematrix/xml?"
      output.should eq expected
    end
    
    it '#should return the starting address latitude' do
      input = Dist.origin_lat(0)
      expected = '47.624'
      input.should eq expected
    end
  
    it '#should return the starting address longitude' do
      input = Dist.origin_lon(0)
      expected = '-122.29'
      input.should eq expected
    end
    
    it '#should return the destination address latitude' do
      input = Dist.destination_lat(0)
      expected = '47.265'
      input.should eq expected
    end
    
    it '#should return the destination address longitude' do
      input = Dist.destination_lon(0)
      expected = '-122.439'
      input.should eq expected
    end
    
    it '#should provide the XML outout from URL' do
      input = Dist.xml(0)
      expected = 1
      input should eq expected
    end
  
end
  
  