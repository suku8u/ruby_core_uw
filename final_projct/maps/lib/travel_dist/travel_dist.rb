$LOAD_PATH.unshift File.dirname(__FILE__)

require 'net/http'
require 'nokogiri'
require 'dist_source'
require 'dist_result'

module Maps

class Travel_dist
  
  URL_STATIC = "http://maps.googleapis.com/maps/api/distancematrix/xml?"
  
  def initialize
   @count_min = 0
   @count_max = (Dist_source.count)-1
  end

  def origin_lat (row)
    @origin_lat = Array.new
    @origin_lat = Dist_source.all[row].origin_lat
    @origin_lat
  end

  def origin_lon (row)
    @origin_lon = Array.new
    @origin_lon = Dist_source.all[row].origin_lon
    @origin_lon
  end
  
  def destination_lat (row)
    @destination_lat = Array.new
    @destination_lat = Dist_source.all[row].destination_lat
    @destination_lat
  end
  
  def destination_lon (row)
    @destination_lon = Array.new
    @destination_lon = Dist_source.all[row].destination_lon
    @destination_lon
  end

  def url (row)
    @url_concat = "#{URL_STATIC}origins=#{origin_lat(row)},#{origin_lon(row)}\
                   &destinations=#{origin_lat(row)},#{destination_lon(row)}&sensor=false"
    @url = URI(@url_concat.delete(' ')) 
  end

  def xml (row)
    @xml = Net::HTTP.get(url(row))
    @xml
  end

  def driving_dist (row)
    @page = Nokogiri::XML(xml(row))
    @set = @page.xpath('//distance')
    @driving_dist =  @set.css("text").last.text
    @driving_dist
  end
  
  def driving_time (row)
    @page = Nokogiri::XML(xml(row))
    @set = @page.xpath('//duration')
    @driving_time =  @set.css("text").last.text
    @driving_time
  end

  def dist_results (row)
    Dist_result.new(:origin_lat => origin_lat(row),
                    :origin_lon => origin_lon(row),
                    :destination_lat => destination_lat(row),
                    :destination_lon => destination_lon(row),
                    :driving_dist => driving_dist(row),
                    :driving_time => driving_time(row)
                    ).save
  end

  def calc
    for row in @count_min..@count_max do
    dist_results (row)
    end
  end
   
end

end