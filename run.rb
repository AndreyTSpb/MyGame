require "~/RubyProject/MyGames/enemy.rb"
require "~/RubyProject/MyGames/mypersonag.rb"
require "~/RubyProject/MyGames/figth.rb"
require "~/RubyProject/MyGames/menus.rb"
require "~/RubyProject/MyGames/startgame.rb"
require "~/RubyProject/MyGames/actions.rb"

puts "Welcom to Game!!!"

menu_s = Menus.new(:start)
s_opt = menu_s.show_menu

case s_opt
     when 1
        system('reset')
        perec = MyPersonag.new
        my = perec.arr_info
        while my[:health]>0
            perec.show_info
            print " You move :"
            mov = gets.strip.to_s
            move = Actions.new(mov, my)
        end
     when 2
         system('reset')
         puts "Load last saved game"
         perec = MyPersonag.new
         #load savedparametrs
         load = StartGame.new
         param_load = load.load_game
         perec.health = param_load[:health]
         perec.power  = param_load[:power]
         #start 
         my = perec.arr_info
         while my[:health]>0
            perec.show_info
            print " You move :"
            mov = gets.strip.to_s
            move = Actions.new(mov, my)
         end
     when 3
         system('reset')
         puts "Exit to geme"
         exit
end