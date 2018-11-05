class BuildDeck
    def initialize 
        @deck = []
        suits = ["H", "D", "C", "S" ]
        values = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "T", "J", "Q","K" ]
        suits.each do |suit|
        values.each do |value|
            @deck << "#{value}#{suit}"
        @deck.shuffle!
        end
    end
    @deck
    end
    attr_reader :deck
end

deck1 = BuildDeck.new
puts "#{deck1}"

