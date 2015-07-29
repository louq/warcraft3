require_relative 'spec_helper'

describe SeigeEngine do

  before :each do
    @seigeengine = SeigeEngine.new
  end

 describe "#attack!" do
    it "does not attack Peasant or Footman" do
      enemy = Footman.new
      (@seigeengine).should_receive(:can_attack?).with(anything()).and_return(false)
      expect(@seigeengine.attack!(enemy)).to be_nil
    end

    it "attacks Barracks and inflicts 2x damage" do
      enemy = Barracks.new
      (@seigeengine).should_receive(:can_attack?).with(anything()).and_return(true)
      expect(@seigeengine.attack!(enemy)).to eq(400)
    end

    it "attacks Seige Engines and inflicts normal damage" do
      enemy = SeigeEngine.new
      (@seigeengine).should_receive(:can_attack?).with(anything()).and_return(true)
      expect(@seigeengine.attack!(enemy)).to eq(350)
    end

	end 

	# describe "#damage" do
 #    it "should reduce seige engine health by attack power" do
 #      @seigeengine.damage(50)
 #      expect(@seigeengine.health_points).to eq(350) # starts at 400
 #    end
 #   end 


	# describe "#can_attack?" do
	# 	it "should return false if enemy's class is NOT Barracks or Seige Engines" do
 #    enemy = Footman.new
 #    expect(@seigeengine.can_attack?(enemy)).to be_falsey
 #  	end
	# end

end

# describe Barracks do

#   before :each do
#     @barracks = Barracks.new
#   end

#   describe "#train_seigeengine" do
#     it "costs 200 gold" do
#       @barracks.train_seigeengine
#       expect(@barracks.gold).to eq(800) # starts at 1000
#     end

#     it "costs 3 food" do
#       @barracks.train_seigeengine
#       expect(@barracks.food).to eq(77) # starts at 80
#     end

#     it "costs 60 lumber" do
#       @barracks.train_seigeengine
#       expect(@barracks.lumber).to eq(440) # starts at 500
#     end

#     it "produces a seigeengine unit" do
#       seigeengine = @barracks.train_seigeengine
#       expect(seigeengine).to be_an_instance_of(SeigeEngine)
#     end
#   end

#   describe "#can_train_seigeengine?" do
#     it "returns true if there are enough resources to train a seige engine" do
#       expect(@barracks.can_train_seigeengine?).to be_truthy
#     end

#     it "returns false if there isn't enough food" do
#       @barracks.should_receive(:food).and_return(2)
#       expect(@barracks.can_train_seigeengine?).to be_falsey
#     end

#     it "returns false if there isn't enough gold" do
#       @barracks.should_receive(:gold).and_return(199)
#       expect(@barracks.can_train_seigeengine?).to be_falsey
#     end
#   end

#   describe "#train_seigeengine" do
#     it "does not train a seigeengine if there aren't enough resources" do
#       @barracks.should_receive(:can_train_seigeengine?).and_return(false)
#       expect(@barracks.train_seigeengine).to be_nil
#     end
#     it "trains a peasant if there are enough resources" do
#       @barracks.should_receive(:can_train_seigeengine?).and_return(true)
#       expect(@barracks.train_seigeengine).to be_a(SeigeEngine)
#     end
#   end
# end
