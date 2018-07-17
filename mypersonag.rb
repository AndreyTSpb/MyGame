#this about my personag
class MyPersonag
    attr_reader   :name
    attr_accessor :health
    attr_accessor :weapon
    attr_accessor :power
    attr_accessor :golds
    attr_accessor :potion
    attr_accessor :armor
    def initialize
        @name   = "vasko_pupkin"
        @health = 29
        @power  = 12
        @weapon = 'KNIFE'
        @armor  = 'ROBE'
        @golds  = 0
        @potion = 0
    end
    def arr_info
        arr = { :name   => @name,
                :health => @health,
                :power  => @power,
                :weapon => @weapon,
                :armor  => @armor,
                :golds  => @golds,
                :potion => @potion}
        return arr
    end

    def show_info
        puts "========================"
        puts " heal: #{@health}, armor: #{@armor} "
        puts " pow: #{@power}, weapon: #{@weapon} "
        puts " golds: #{@golds}, potion: #{@potion} "
        puts "========================"
    end
end