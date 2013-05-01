$LOAD_PATH.unshift File.expand_path("../lib",__FILE__)
#$LOAD_PATH.unshift File.dirname(__FILE__)

require 'maps'
require 'nokogiri'

describe Maps::Travel_dist do

context 'Travel Distance Calculator' do
  
  subject {Maps::Travel_dist.new}
  
  URL_STATIC = "http://maps.googleapis.com/maps/api/distancematrix/xml?"
  
    it '#should use distancematrix API' do
      output = URL_STATIC
      expected = "http://maps.googleapis.com/maps/api/distancematrix/xml?"
      output.should eq expected
    end
    
    it '#should test number of rows' do
      output = subject.instance_variable_get(:@count_max)+1
      expected = 5
      output.should eq expected
    end
    
    it '#should return the starting address latitude' do
      input = subject.origin_lat(0)
      expected = '47.624'
      input.should eq expected
    end
  
    it '#should return the starting address longitude' do
      input = subject.origin_lon(0)
      expected = '-122.29'
      input.should eq expected
    end
    
    it '#should return the destination address latitude' do
      input = subject.destination_lat(0)
      expected = '47.265'
      input.should eq expected
    end
    
    it '#should return the destination address longitude' do
      input = subject.destination_lon(0)
      expected = '-122.439'
      input.should eq expected
    end
    
    it '#should provide the XML outout distance' do
      #input = subject.xml(0)
      subject.xml(0).should include ("distance")
    end
    
    it '#should provide the XML outout duration' do
      #input = subject.xml(0)
      subject.xml(0).should include ("duration")
    end
    
    it '#should provide the distance between points' do
      input = subject.driving_dist(0)
      expected = "13.0 km"
      input.should eq expected
    end
    
    it '#should provide the distance between points' do
      input = subject.driving_time(0)
      expected = "53 mins"
      input.should eq expected
    end
    
    it '#should test number of results returned' do
      input = Maps::Dist_source.count
      expected = Maps::Dist_result.count
      input.should eq expected
    end

    it '#should test origin lat' do
      input = Maps::Dist_source.all[0].origin_lat
      expected = Maps::Dist_result.all[0].origin_lat
      input.should eq expected
    end
    
    it '#should test origin lon' do
      input = Maps::Dist_source.all[0].origin_lon
      expected = Maps::Dist_result.all[0].origin_lon
      input.should eq expected
    end
    
    it '#should test destination lat' do
      input = Maps::Dist_source.all[0].destination_lat
      expected = Maps::Dist_result.all[0].destination_lat
      input.should eq expected
    end
     
    it '#should test destination lon' do
      input = Maps::Dist_source.all[0].destination_lon
      expected = Maps::Dist_result.all[0].destination_lon
      input.should eq expected
    end
    
    it '#should test distance' do
      input = Maps::Dist_result.all[0].driving_dist
      expected = "13.0 km"
      input.should eq expected
    end
    
    it '#should test duration' do
      input = Maps::Dist_result.all[0].driving_time
      expected = "53 mins"
      input.should eq expected
    end
    
  end
end
  
  