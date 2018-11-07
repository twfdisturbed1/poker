class BuildDeck
    def initialize 
        @deck = []
        @suits = ["H", "D", "C", "S" ]
        @values = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "T", "J", "Q","K" ]
        @suits.each do |suit|
        @values.each do |value|
            @deck << "#{value}#{suit}"
        @deck.shuffle!
        end
    end
    @deck
    end
    attr_reader :deck
    attr_reader :suits
    attr_reader :values
end


deck = BuildDeck.new
deck1 = []
deck1 << deck

p "#{deck}"
