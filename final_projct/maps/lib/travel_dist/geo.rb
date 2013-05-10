$LOAD_PATH.unshift File.dirname(__FILE__)

require 'net/http'
require 'nokogiri'
require 'geo_code'
require 'location'


module Maps

class Geo
  
  URL_STATIC = "http://maps.googleapis.com/maps/api/geocode/xml?"

  
  def initialize
   @count_min = 0
   @count_max = (Location.count)-1
  end

  def location (row)
    @address = Array.new
    @address = Location.all[row].address
    @address
  end

  #  def origin_lat (row)
  #   @origin_lat = Array.new
  #   @origin_lat = Dist_source.all[row].origin_lat
  #   @origin_lat
  # end
#http://maps.googleapis.com/maps/api/geocode/xml?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&sensor=true_or_false

  def url (row)
    @url_concat = "#{URL_STATIC}address=#{location(row)}&sensor=false"
    @url = URI(@url_concat.gsub! /\s+/, '+')
  end

  def xml (row)
    @xml = Net::HTTP.get(url(row))
    @xml
  end

  def lat (row)
    @page = Nokogiri::XML(xml(row))
    @set = @page.xpath('//geometry')
    @lat =  @set.css("lat").last.text
    @lat
  end
  
  def lon (row)
    @page = Nokogiri::XML(xml(row))
    @set = @page.xpath('//geometry')
    @lon =  @set.css("lat").last.text
    @lon
  end

  def geo_codes (row)
    Geo_code.new(:address => location(row),
                :lat => lat(row),
                 :lon => lon(row) 
                 ).save
  end

  #   def dist_results (row)
  #   Dist_result.new(:origin_lat => origin_lat(row),
  #                   :origin_lon => origin_lon(row),
  #                   :destination_lat => destination_lat(row),
  #                   :destination_lon => destination_lon(row),
  #                   :driving_dist => driving_dist(row),
  #                   :driving_time => driving_time(row)
  #                   ).save
  # end

  def calc
    for row in @count_min..@count_max do
    geo_codes (row)
    end
  end
   
end

end