#Start New Games

class StartGame
    def initialize
        perec = MyPersonag.new
    end

    def load_game
        param = {}
        File.open('saves/test.txt').each do |line|
            #puts line
            if line.include?("<health>")
                line.delete!("<health>")
                line.delete!("</health>")
                param[:health] = line.strip.to_i
            elsif line.include?("<power>")
                line.delete!("<power>")
                line.delete!("</power>")
                param[:power] = line.strip.to_i
            end
        end
        return param
    end
end