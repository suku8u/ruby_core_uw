$LOAD_PATH.unshift File.expand_path("../lib",__FILE__)
#$LOAD_PATH.unshift File.dirname(__FILE__)

require 'Maps'
require 'nokogiri'

describe Maps::Dist_source do
  
  subject {Maps::Dist_source}

  it '#should be an obejct' do
  subject.should be_a Object
  end
  
  it '#should inherit from ActiveRecord::Base' do
    expected = ActiveRecord::Base
    input = subject.new
    input.should be_a_kind_of (expected)
  end
  
  it '#should match number of objects to row count' do
    expected = 5
    input = subject.count
    input.should eq expected
  end

end
