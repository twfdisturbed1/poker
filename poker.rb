
class Card
  attr_accessor :rank, :suit
 
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
 
  def output_card
    puts "The #{@rank} of #{@suit}"
  end
end
 
class Deck
  def initialize
    @ranks = [*(2..9), 'T', 'J', 'Q', 'K', 'A']
    @suits = ['♣', '♥', '♠', '♦']
    @cards = []
 
    @ranks.each do |rank|
      @suits.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end
  
  @cards.shuffle!
  end
 
  def deal (number)
    number.times {@cards.shift.output_card}
  end
end

 @deck2 = []
 @deck1 = []
p "One Hand"
@deck1 << Deck.new.deal(1)
p "Second Hand"
@deck2 << Deck.new.deal(1)
@hand1 = []
@hand2 = []
@hand1 << @deck1
@hand2 << @deck2
p "#{@hand1}" 
p "#{@hand2}"