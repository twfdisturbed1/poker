require_relative "pairs.rb"

# My Deck of Cards
deck = [] 
# Player 1
white = []
# Player 2
black = []

#White Score
$w_score = 0
#Black Score
$b_score = 0

# White Hand
$white_hand = " "
# Black Hand
$black_hand =" "

# class Deck
#     intialize(suit, rank)
# @suit = suits
# @rank = values
# end


class Card
    attr_accessor :points, :type
    def initialize(str)
      v = str[0]
      if v == "T"
        @points = 10
      elsif v == "J"
        @points = 11
      elsif v == "Q"
        @points = 12
      elsif v == "K"
        @points = 13
      elsif v == "A"
        @points = 14
      else
        @points = v.to_i
      end
      @type  = str[1]
    end
  
    def to_s
      @value.to_s+@type.to_s
    end
  end

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
# ace_low = 1
# ace_high = 14

# Dealing Cards to players


5.times do
    white << deck.pop 
end

# white << "6c"
# white << "7c"
# white << "8c"
# white << "9c"
# white << "Tc"

# black << "6c"
# black << "7c"
# black << "8c"
# black << "9c"
# black << "Tc"

5.times do 
    black << deck.pop
end
puts  " White Players Hand #{white} and  Black Players Hand #{black}"


white_no_suit = [] 
white_no_suit << white[0][0,1] 
white_no_suit << white[1][0,1]
white_no_suit << white[2][0,1]
white_no_suit << white[3][0,1] 
white_no_suit << white[4][0,1]

black_no_suit = [] 
black_no_suit << black[0][0,1] 
black_no_suit << black[1][0,1]
black_no_suit << black[2][0,1]
black_no_suit << black[3][0,1] 
black_no_suit << black[4][0,1]

puts white_no_suit.sort!
puts black_no_suit.sort!

all_poker_straights = %w(A 2 3 4 5 6 7 8 9 10 J Q K A 2 3 4 5 A J K Q T 6 7 8 9 T 7 8 9 J T 8 9 J Q T 9 J K Q T).each_cons(5)

if all_poker_straights.include?((white_no_suit)) 
    true
    $w_score += 8
    $white_hand = $white_hand + " Straight "
else
   
end

if all_poker_straights.include?((black_no_suit)) 
    true
    $b_score += 8 
    $black_hand = $black_hand + " Straight "
else
end




counter = 0
white.each_with_index do |value , index| 
    if white[index][1,1] == white[4][1,1]
counter += 1
else
end
end

if counter == 5
        puts "White has a Flush"
        $w_score += 5
        $white_hand = $white_hand + "Flush"
    else 
        puts "white doesn't have a flush"
end



counter = 0
black.each_with_index do |value , index| 
    if black[index][1,1] == black[4][1,1]
            counter += 1
        else
end
end


if counter == 5
        puts "Black has a Flush"
        $b_score += 5
        $black_hand = $black_hand + "Flush"
    else 
        puts "Black doesn't have a flush"
end


# if counter >= 3
#     puts "White has 4 of a kind"
#     elsif counter == 2 
#         puts "White has 3 of a kind"
#     elsif counter == 1
#         puts "White has a pair" 
#     else

# end
alpha_table = {"T" => 10, "J" => 11, "Q" => 12, "K" => 13, "A" => 14}



puts "White has "
    w_pairs(white[0][0,1],white[1][0,1],white[2][0,1],white[3][0,1],white[4][0,1])
puts "Black has"
    b_pairs(black[0][0,1],black[1][0,1],black[2][0,1],black[3][0,1],black[4][0,1])



puts "White Has#{$white_hand} Score: #{$w_score}"
puts "Black Has#{$black_hand} Score: #{$b_score}"

if
  $w_score > $b_score
  puts "White Wins"
elsif
    $b_score > $w_score
    puts "Black Wins"  
else

    puts "Draw"
end

    # if white[0][0,1] && white[1][0,1] && white[2][0,1] == white[3][0,1] or white[0][0,1] && white[1][0,1] && white[2][0,1] == white[4][0,1] or white[1][0,1] && white[2][0,1] && white[3][0,1] == white[4][0,1] or white[0][0,1] && white[1][0,1] && white[3][0,1] == white[4][0,1]
#     puts "White has 4 of a Kind"
#     elsif 
#     white[0..1][0,1] == white[2][0,1] or white[0..1][0,1] == white[3][0,1] or white[0..1][0,1] == white[4][0,1] or white[1..2][0,1] == white[3][0,1] or white[1..2][0,1] == white[4][0,1] or white[2..3][0,1] == white[4][0,1]
#     puts "White has 3 of a kind"
#     elsif white[0][0,1] == white[1][0,1] or white[0][0,1] == white[2][0,1] or white[0][0,1] == white[3][0,1] or white[0][0,1] == white[4][0,1] or white[1][0,1] == white[2][0,1] or white[1][0,1] == white[3][0,1] or white[1][0,1] == white[4][0,1] or white[2][0,1] == white[3][0,1] or white[2][0,1] == white[4][0,1] or white[3][0,1] == white[4][0,1]
#     puts "White has a pair"
    
# else
#     puts "White has no pairs"
# end

# if black[0][0,1] == black[1][0,1] or black[0][0,1] == black[2][0,1] or black[0][0,1] == black[3][0,1] or black[0][0,1] == black[4][0,1] or black[1][0,1] == black[2][0,1] or black[1][0,1] == black[3][0,1] or black[1][0,1] == black[4][0,1] or black[2][0,1] == black[3][0,1] or black[2][0,1] == black[4][0,1] or black[3][0,1] == black[4][0,1]
#     puts "Black has a pair"
    
# else
#     puts " Black has no pairs"
# end
# puts "#{white[0][0,1]}"
# puts "#{white[0][1,1]} #{white[1][1,1]} #{white[2][1,1]} #{white[3][1,1]} #{white[4][1,1]}"
# class Scorer
#     attr_reader :winning_hand
  
#     @@score = {
#     :ace_low => 1,
#     "2" => 2,
#     "3" => 3,
#     "4" => 4,
#     "5" => 5,
#     "6" => 6,
#     "7" => 7,
#     "8" => 8,
#     "9" => 9,
#     :T => 10,
#     :J => 11,
#     :Q => 12,
#     :K => 13,
#     :ace_high => 14
# }


# class GameScorer
#     attr_reader :winning_hand
  
#     @@hand_rankings = {
#         :royal_flush => 10,
#         :straight_flush => 9,
#         :four_of_a_kind => 8,
#         :full_house => 7,
#         :flush => 6,
#         :straight => 5,
#         :three_of_a_kind => 4,
#         :two_pair => 3,
#         :one_pair => 2,
#         :high_card => 1
#     }
