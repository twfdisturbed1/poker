# My Deck of Cards
deck = [] 
# Player 1
white = []
# Player 2
black = []

# Building the Deck
suits = ["H", "D", "C", "S" ]
values = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "T", "J", "Q","K" ]
suits.each do |suit|
values.each do |value|
deck << "#{value}#{suit}"
end
end
# Shuffling the Deck
deck.shuffle!

# Setting Ace to be High or Low 
ace_low = 1
ace_high = 14

# Dealing Cards to players
white << deck.pop(5)
black << deck.pop(5)

puts "#{white} and  #{black}"

