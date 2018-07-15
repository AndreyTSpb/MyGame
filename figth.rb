# this figth
class Figth
    def initialize(opt)
        #opt this array whith parametramy enemy and you
        @enemy_pow  = opt[:pow_e]
        @enemy_heal = opt[:heal_e]
        @my_pow     = opt[:pow_my]
        @my_heal    = opt[:heal_my]
    end

    def figth
        while @my_heal > 0
            print " My health: #{@my_heal} VS Enemy Health: #{@enemy_heal} \r"
            visual_efect
            @enemy_heal = @enemy_heal - atack(@my_pow)
            if @enemy_heal <= 0
                puts "\n"
                return true
            end
            @my_heal = @my_heal - atack(@enemy_pow)
        end
        puts "\n"
        return false
    end

    def visual_efect
        str = "\\|/-"
        7.times do
            str.each_char do |x|
                print x+"\r"
                sleep 0.1
            end
        end
    end
    def atack(p)
        power = rand(0..p)
    end

    def test_hit(p, power)
        if power == p
            puts "Critical hit!!!"
            return true
        else
            return false
        end
    end
end