class SeigeEngine < Unit

	attr_reader :seigeengine

	def initialize
		super(400,50)
		@seigeengine = seigeengine
	end


	def damage(attack_power)
		@health_points -= attack_power	
	end

	def attack!(enemy)
		if can_attack?(enemy) 
			if enemy.is_a? Barracks
				enemy.damage(attack_power*2) 
			else
				enemy.damage(attack_power)
			end
		end
	end


	def can_attack?(enemy)
		enemy.class == (Barracks || SeigeEngine)
	end 

end 