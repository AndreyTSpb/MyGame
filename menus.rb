#this menu for runing game

class Menus
    def initialize(opt)
        case opt
            when :start
                @menu = start_menu
                #@action = action_start
            when :end
                @menu = end_menu
                #@action = action_end
        end
    end
    def show_menu
        @menu.each do |key, val|
            puts val
        end
        print "Enter number and press 'Enter': "
        sel = gets.strip.to_i
    end
    def start_menu
        menu = {'1' => '1 > New Game',
                '2' => '2 > Load Game',
                '3' => '3 > Exit'}
    end

    def end_menu
        menu = {'1' => '1 > Try agein',
                '2' => '2 > Exit'}
    end
end