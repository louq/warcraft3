class Unit
	attr_reader :health_points, :attack_power

	def initialize(health_points,attack_power)
		@health_points = health_points
		@attack_power = attack_power
	end 

	def damage(attack_power)
		unless dead?
		@health_points -= attack_power
		end
	end

	def attack!(enemy)
		unless dead?
			enemy.damage(attack_power) 
		end 
end

	def dead? 
	 	@health_points < 1
	end
end 
