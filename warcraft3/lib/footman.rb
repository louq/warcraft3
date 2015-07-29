# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit 
	attr_accessor :footman


  def initialize
  #   # Need to default the 2 instance variables here
  #   # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  	super(60, 10)
   #  @health_points = 60
  	# @attack_power = 10
    # @footman = footman
  end

  def attack!(enemy)
    if enemy.is_a? Barracks
    x = @attack_power / 2
    else
      x = @attack_power
    end
    enemy.damage(x)
  end

  # def damage(attack_power)
  #   @health_points -= attack_power
  # end 

end
