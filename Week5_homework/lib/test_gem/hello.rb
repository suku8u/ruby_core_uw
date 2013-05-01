module TestGem

  class Hello
    puts "class #{self} defined"
  end

  def self.first filename
  line = IO.readlines (filename)
  lines.first.chomp!
  end

  def self.last filename
  file.open(filename) {|file| file.readlines[-1] }
  end



end