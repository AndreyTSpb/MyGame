#encript: cp866
class Enemy
	attr_reader :arr_enemy
	
	def initialize
		@arr_enemy = {
			'1' => {:cat    => {:power  => 10,
								:health => 25,
								:img    => ''}, 
					:sova   => {:power  => 15,
								:health => 35,
								:img    => ''}},
			'2' => {:cobald => {:power  => 10,
								:health => 25,
								:img    => ''},
					:goblin => {:power  => 10,
								:health => 25,
								:img    => ''}},
			'3' => {:vedma  => {:power  => 30,
								:health => 235,
								:img    => ''},
					:trol   => {:power  => 40,
								:health => 335,
								:img    => ''}}
		}
	end
	def random_enemy(level)
		l = level.to_s
		arr_enemy_level = @arr_enemy[l]
		#idx = self.keys[n]
		enemy_name = @arr_enemy[l].keys[rand(0...arr_enemy_level.size)]
		#puts "Enemy: #{enemy_name}"
		#puts @arr_enemy[l][enemy_name]
		arr = {:name   => enemy_name,
			   :power  => @arr_enemy[l][enemy_name][:power],
			   :health => @arr_enemy[l][enemy_name][:health],
			   :img    => @arr_enemy[l][enemy_name][:img]
			}
		return arr
	end
end
