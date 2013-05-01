$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require 'test_gem'

describe TestGem::File do

  context 'instance' do

    subject { TestGem::File.new }

    it { subject.should be_a TestGem::File }

  end
    
end