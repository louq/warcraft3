class Barracks

	attr_reader :gold, :food, :health_points, :lumber

	def initialize 
		@gold = 1_000
		@food = 80
		@health_points = 500
		@lumber = 500
	end 

  # def can_train_footman?
  #   true
  # end

 	def can_train_footman?
  	gold >= 135 && food >= 2
	end 

  def train_footman
  	if can_train_footman? 
  		@gold -= 135
  		@food -= 2
  		footman = Footman.new		
  	end 
	end

	def can_train_peasant?
  	gold >= 90 && food >= 5 
  end 

	def train_peasant
		if can_train_peasant?
		@gold -= 90
  	@food -= 5
  	peasant = Peasant.new		
  	end
  end

	def can_train_seigeengine?
  	gold >= 200 && food >= 3 && lumber >=60 
  end 

  	
  def train_seigeengine
		if can_train_seigeengine?
		@gold -= 200
		@lumber -= 60
		@food -= 3
		seigeengine = SeigeEngine.new
		end 
	end 



  def damage(attack_power)
  	@health_points -= attack_power.ceil
  end



end
