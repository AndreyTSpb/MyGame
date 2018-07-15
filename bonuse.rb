#this file describrs the bonuse which can be get for figth
class Bonuse
    def initialize
        @gift = {
                 :gold => rand(10..100),
                 :item => ''
                }
    end

end