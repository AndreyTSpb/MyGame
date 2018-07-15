require "~/RubyProject/MyGames/enemy.rb"
require "~/RubyProject/MyGames/mypersonag.rb"
require "~/RubyProject/MyGames/figth.rb"

puts "test one"

enemy = Enemy.new
puts enm1 = enemy.random_enemy(1)

perec = MyPersonag.new
puts my = perec.show_info
opt = { :pow_e   => enm1[:power],
        :heal_e  => enm1[:health],
        :pow_my  => my[:power],
        :heal_my => my[:health]
        }
figth = Figth.new(opt)
if figth.figth
    puts "You Win!!!"
else
    puts "You Lose!!!"
end
