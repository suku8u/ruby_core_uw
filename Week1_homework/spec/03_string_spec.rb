
describe "Strings" do
  
  context "created with double quotes" do
    
    it "are valid" do
      "Ruby Course".should eq 'Ruby Course'
    end
    
    it "are of class String" do
       a = "test"
       a.should be_a String
  end
    
    it "can contain bare single-quote (') characters" do
      a = 'Ruby isn\'t crazy'
      a.should be_a String
  end
    
   it "allow the escape of double quote (\") characters" do
       a = "He said \"what?\""
       a.should be_a String
   end
    
  it "allow interpolation (Ruby code within the string)" do
     b = "Value is #{2**3}"
     b.should be == "Value is 8"
  end
    
  it "replace \t with a tab character" do
     a = "\thello".to_s
     b = "  hello".to_s
     a.should_not eq b
  end

 it "ADD AN EXAMPLE THAT TESTS A DIFFERENT ESCAPE SEQUENCE" do
       a = "\thello there\n".to_s
       b = "\nhello there\t".to_s
       a.should_not eq b
  end
       
 it "replaceS special characters when values are specified at the end via '% [value]'" do
       c= %Q(Joe said: Frank said)
       a="Joe said: Frank said"
       a.should eq c
 end
 
 end
  
  context "created with single quotes" do
    
    it "are valid" do
      'Alfred E. Newman'.should eq "Alfred E. Newman"
    end
    
    it "are of class String" do
      a='this'
      a.should be_a String
   end
      
    it "allow double-quote (\") characters" do
       'he said \"I like this\"'.should be_a String
   end

    it "allow the escape of single quote (') characters" do
    'what\'s wrong with you?'.should be_a String
   end
    
    it "does not interpolate Ruby code" do
       a=2
       'give me #{a} tickets'.should_not eq 'give me 2 tickets'
   end
    
    it "does not escape newline characters" do
    'what he \n said is not true'.should_not eq "what he \n said is not true"
  end
    
  end

  context "created with Q sequence" do

    it "supports arbitrary delimiters and behave like a double quoted string" do
      %Q@<span style='color:blue'>"1 + 1 = #{1 + 1}"</span>@.should eq '<span style=\'color:blue\'>"1 + 1 = 2"</span>'
    end

    it "can omit the Q and just use %{}" do
       %Q(this is what he said).should eq %{this is what he said}
  end
  
    it "created with the pattern %q supports arbitrary delimiters and behave like a single quoted string" do
    %q(this is what he_said !).should eq 'this is what he_said !'
  end

  end

end