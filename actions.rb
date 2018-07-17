class Actions
    def initialize(mov, my)
        case mov.upcase 
        when "SAVE"
            system('reset')
            save_game(my)
        when "EXIT"
            system('reset')
            puts "Good bay!!!"
            exit
        when "LEFT"
            system('reset')
            enemy = Enemy.new
            puts enm = enemy.random_enemy(my[:level]+1)
        when "RIGTH"
            system('reset')
            enemy1 = Enemy.new
            puts enm1 = enemy1.random_enemy(my[:level]+1)
        when "FORWARD"
            system('reset')
            enemy2 = Enemy.new
            puts enm2 = enemy2.random_enemy(my[:level]+1)
        when "BACK"
            system('reset')
            enemy3 = Enemy.new
            puts enm3 = enemy3.random_enemy(my[:level]+1)
        else 
            puts " there is no such direction of movement (left/rigth/forward/back/save/exit)"
        end
    end

    def save_game(my)
        string = "<name>#{my[:name]}</name>\n<health>#{my[:health]}</health>\n<power>#{my[:power]}</power><weapon>#{my[:weapon]}</weapon>\n<armor>#{my[:armor]}</armor>\n<golds>#{my[:golds]}</golds>\n<potion>#{my[:potion]}</potion>" 
        File.open('saves/test.txt', 'w'){|file| file.write string}
        exit_or_continue
    end

    def exit_or_continue
        print "You want to continue game? (Y/n)"
        str = gets.strip.to_s
        if str.upcase == "N"
            puts "Good bay!!!"
            exit
        end
    end
end