
require_relative 'spec_helper'

describe Unit do

  before :each do
    @unit = Unit.new(0,10)
  end

  describe "#attack!" do
    it "does not attack if dead" do
      enemy = Unit.new(60,10)
      @unit.attack!(enemy)
      (@unit).should_receive(:dead?).and_return(true)
      expect(@unit.attack!(enemy)).to be_nil
    end
	end 

	describe "#damage" do
    it "does not cause any more damage if unit is dead" do
      @unit.damage(4)
      (@unit).should_receive(:dead?).and_return(true)
      expect(@unit.damage(4)).to be_nil
    end
   end 

end 
