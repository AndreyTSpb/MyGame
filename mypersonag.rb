#this about my personag
class MyPersonag
    attr_reader   :name
    attr_accessor :health
    attr_accessor :weapon
    attr_accessor :power
    def initialize
        @name   = "vasko_pupkin"
        @health = 29
        @power  = 12
    end
    def show_info
        arr = { :name   => @name,
                :health => @health,
                :power  => @power}
        return arr
    end
end