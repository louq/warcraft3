require_relative 'spec_helper'

describe Unit do

  before :each do
    @unit = Unit.new(0,10)
  end

  describe "#dead?" do
    it "should return true if health points < 1" do
    	# @unit.should_receive(:health_points).and_return(2)
      expect(@unit.dead?).to be_truthy
    end
  end 

end 


