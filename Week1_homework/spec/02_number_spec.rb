describe "Integers" do

  it "have methods (just like all objects)" do
    1.should respond_to :+
  end

  it "can use underscores, to be easy on the eyes" do
    1_000_000.should eq 1000000
  end

  it "can be added" do
    (1 + 2).should eq 3
  end

  it "can be subtracted" do
    (10-3).should == 7
  end

  it "can be multiplied" do
     (3*9).should > 25
  end

  it "support exponentiation" do
    (3**3).should == 27
  end

  it "support modulo" do
    (20%4).should == 0
  end
    
  it "are usually of class Fixnum" do
     a=100
     (a).should be_a Fixnum
  end  

  it "that are are very large are of class Bignum" do
     a=100**999999
     a.should be_a Bignum
  end
  
  it "are returned from Integers calculations" do
     a=10
     b=3
     c=a*3
     c.should be_a Fixnum
  end

end

describe "Floats" do

  it "have their own class" do
    (1.0).should be_a Float
  end

  it "are returned when calculations include a Float" do
     (1.3*3.3).should be_a Float
  end

end

describe "Other Ruby classes" do

  it "ADD ANY EXAMPLE THAT TESTS A Rational, Complex OR BigDecimal value" do
     a = 3
     Rational(2,3).should eq 2/3.to_r
  end

end

