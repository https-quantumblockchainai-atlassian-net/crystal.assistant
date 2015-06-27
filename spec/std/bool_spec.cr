require "spec"

describe "Bool" do
  describe "|" do
    assert { (false | false).should be_false }
    assert { (false | true).should be_true }
    assert { (true | false).should be_true }
    assert { (true | true).should be_true }
  end

  describe "&" do
    assert { (false & false).should be_false }
    assert { (false & true).should be_false }
    assert { (true & false).should be_false }
    assert { (true & true).should be_true }
  end

  describe "^" do
    assert { (false ^ false).should be_false }
    assert { (false ^ true).should be_true }
    assert { (true ^ false).should be_true }
    assert { (true ^ true).should be_false }
  end

  describe "hash" do
    assert { true.hash.should eq(1) }
    assert { false.hash.should eq(0) }
  end
end
