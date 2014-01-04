require 'spec_helper'

describe Fortune do
  describe "#random" do

    specify{ subject.should respond_to(:message) }
    specify{ subject.should respond_to(:category) }

    before(:each) do
      Fortune.create(:message => "m1", :category => "a")
      Fortune.create(:message => "m2", :category => "b")
      Fortune.create(:message => "m3", :category => "c")
      Fortune.create(:message => "m4", :category => "d")
      Fortune.create(:message => "m5", :category => "e")
    end

    it "returns a random fortune" do
      fortunes = (1..5).map{|n| Fortune.random }
      fortunes.uniq.should have_at_least(3).items
    end
  end
end
