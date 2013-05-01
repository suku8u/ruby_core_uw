
class Week3

  $global_var = "I'm a Global!"

  A_CONSTANT = "I'm a class CONSTANT"


  def initialize
    @name = 'Brandon'
  end

  def name
    @name
  end

  def name= name = 'Jason'
    @name = name
  end

  def halve array
    half_len = array.size/2
    array[0,half_len]
  end

  def halve! array
    half_len = array.size/2
    array.slice!(half_len,half_len)
    array
  end

  def even? input
    input.to_i%2 == 0
  end
  
  def configure hash = { }
    hash = {:path => './' ,:version => '0.1.0', :mode => 'production'}.merge(hash)
  end
  
  def run_me
    yield
  end


  def each_odd s = []
    a = []
    s.each do |i|
      if i.even? == false
      i 
      yield i if block_given?
      a << i
      end
    end
    a
  end

end
