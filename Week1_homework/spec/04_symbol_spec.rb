describe "Symbols" do

  it "are not like strings, which can have duplicate content in multiple objects" do
    "only_one".object_id.should_not eq "only_one".object_id
  end

  it "only exist once" do
    ("only" + "one").to_sym.object_id.should eq :onlyone.object_id
  end

  it "are of class Symbol" do
     my_hash = {:a=>1}
   :a.should be_a Symbol
  end
  
  it "are not the same as a string of the same characters" do
    my_hash = {:a=>"1"}
    a = "1"
    :a.should_not be a
  end
  
  it "are convertable to strings" do
     :"a".to_s
     "a".should eq :"a".to_s
  end

  it "are convertable from a string" do
     "a".intern.should eq :a
  end

  it "automatically converts to a string when interpolated" do
     "He said #{:what?}".should eq "He said what?"
  end
  
end