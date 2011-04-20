require 'spec_helper'

describe User do
  describe "#unachieved_awards" do
    before(:each) do
      @award1 = Award.create(:name => "Award 1")
      @award2 = Award.create(:name => "Award 2")
    end
    subject { User.make }
    it "has both awards as unachieved" do
      subject.unachieved_awards.should == [@award1, @award2]
    end
    it "has only one award still unachieved" do
      subject.assign_award(@award1)
      subject.unachieved_awards.should == [@award2]
    end
  end
end
