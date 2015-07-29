require_relative 'spec_helper'

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

	describe "#damage" do
    it "should reduce the barracks's health_points by half the attack_power specified" do
      @barracks.damage(100)
      expect(@barracks.health_points).to eq(450) # starts at 500
    end
	end
end