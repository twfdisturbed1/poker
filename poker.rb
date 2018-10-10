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
# def get_card_value(value)
# card_value =  ""

# case value
# when 2
# card_value = 2
# when 3
#     card_value = 3
# when 4
#     card_value = 4
# when 5
#     card_value = 5
# when 6
#     card_value = 6
# when 7
#     card_value = 7
# when 8
#     card_value = 8
# when 9
#     card_value = 9
# when T
#     card_value = 10
# when J
#     card_value = 11
# when Q
#     card_value = 12
# when K
#     card_value = 13
# when A
#     card_value = 14
# end
# end

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


5.times do
    white << deck.pop 
end

# white << "7c"
# white << "7c"
# white << "7c"
# white << "7c"
# white << "9c"

5.times do 
    black << deck.pop
end
puts  " White Players Hand #{white} and  Black Players Hand #{black}"

counter = 0
white.each_with_index do |value , index| 
if white[index][1,1] == white[4][1,1]
counter += 1
else
   
end
# if counter == 5
#  true
# else
#  false

# end
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
        b_score += 5
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


def w_pairs (num1, num2, num3, num4, num5)
    if num1 == num2 and num1 == num3 and num1 == num4
        puts "4 of a Kind" 
        $w_score += 7
        $white_hand = $white_hand + " 4 of a Kind "
    elsif num1 == num2 and num1 == num3 and num1 == num5
         puts "4 of a Kind"
        $w_score += 7
        $white_hand = $white_hand + " 4 of a Kind "
    elsif num1 == num3 and num1 == num4 and num1 == num5
         puts "4 of a kind"
        $w_score += 7
        $white_hand = $white_hand + " 4 of a Kind "
    elsif num1 == num2 and num1 == num4 and num1 == num5
         puts "4 of a kind"
        $w_score += 7
        $white_hand = $white_hand + " 4 of a Kind "
    elsif num2 == num3 and num2 == num4 and num2 == num5
         puts "4 of a kind"
        $w_score += 7
        $white_hand = $white_hand + " 4 of a Kind "
    elsif num1 == num2 and num1 == num3 and num4 == num5
         puts "Full House"
        $w_score += 6
        $white_hand = $white_hand + " Full House "
    elsif num1 == num2 and num1 == num4 and num3 == num5
         puts "Full House"
         $white_hand = $white_hand + " Full House "
        $w_score += 6
    elsif num1 == num2 and num1 == num5 and num3 == num4 
         puts "Full House"
         $white_hand = $white_hand + " Full House "
        $w_score += 6
    elsif num1 == num3 and num1 == num4 and num2 == num5
         puts "Full House"
         $white_hand = $white_hand + " Full House "
        $w_score += 6
    elsif num1 == num3 and num1 == num5 and num2 == num4
         puts "Full House"
         $white_hand = $white_hand + " Full House "
        $w_score += 6
    elsif num1 == num4 and num1 == num5 and num2 == num3
         puts "Full House"
         $white_hand = $white_hand + " Full House "
        $w_score += 6
    elsif num2 == num3 and num2 == num4 and num1 == num5
         puts "Full House"
         $white_hand = $white_hand + " Full House "
        $w_score += 6
    elsif num2 == num3 and num2 == num5 and num1 == num4
         puts "Full House"
         $white_hand = $white_hand + " Full House "
        $w_score += 6
    elsif num2 == num4 and num2 == num5 and num1 == num3 
         puts "Full House"
         $white_hand = $white_hand + " Full House "
        $w_score += 6
    elsif num3 == num4 and num3 == num5 and num1 == num2
         puts "Full House"
         $white_hand = $white_hand + " Full House "
        $w_score += 6
    elsif num1 == num2 and num1 == num3
         puts "3 of a kind"
         $white_hand = $white_hand + " 3 of a kind "
        $w_score += 4
    elsif num1 == num2 and num1 == num4
         puts "3 of a kind"
         $white_hand = $white_hand + " 3 of a kind "
        $w_score += 4
    elsif num1 == num2 and num1 == num5
         puts "3 of a kind"
         $white_hand = $white_hand + " 3 of a kind "
        $w_score += 4
    elsif num1 == num3 and num1 == num4
         puts "3 of a kind"
        $w_score += 4
        $white_hand = $white_hand + " 3 of a kind "
    elsif num1 == num3 and num1 == num5
         puts "3 of a kind"
        $w_score += 4
        $white_hand = $white_hand + " 3 of a kind "
    elsif num1 == num4 and num1 == num5
         puts "3 of a kind"
        $w_score += 4
        $white_hand = $white_hand + " 3 of a kind "
    elsif num2 == num3 and num2 == num4
         puts "3 of a kind"
        $w_score += 4
        $white_hand = $white_hand + " 3 of a kind "
    elsif num2 == num3 and num2 == num5
         puts "3 of a kind"
        $w_score += 4
        $white_hand = $white_hand + " 3 of a kind "
    elsif num2 == num4 and num2 == num5 
         puts "3 of a kind"
        $w_score += 4
        $white_hand = $white_hand + " 3 of a kind "
    elsif num3 == num4 and num3 == num5
         puts "3 of a kind"
        $w_score += 4
        $white_hand = $white_hand + " 3 of a kind "
    elsif num1 == num2 and num3 == num4
         puts "Two Pairs"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs "
    elsif num1 == num2 and num3 == num5
         puts "Two Pairs"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs "
    elsif num1 == num2 and num4 == num5
         puts "Two Pairs"
        $w_score += 3 
        $white_hand = $white_hand + " Two Pairs "
    elsif num1 == num3 and num2 == num4
         puts "Two Pairs"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs "
    elsif num1 == num3 and num2 == num5
         puts "Two Pairs"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs "
    elsif num1 == num3 and num4 == num5
         puts "Two Pairs"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs "
    elsif num1 == num4 and num2 == num3
         puts "Two Pairs"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs "
    elsif num1 == num4 and num2 == num5
         puts "Two Pairs"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs "
    elsif num1 == num4 and num3 == num5
         puts "Two Pairs"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs "
    elsif num1 == num5 and num2 == num3
         puts "Two Pairs"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs "
    elsif num1 == num5 and num2 == num4
         puts "Two Pairs"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs "
    elsif num1 == num5 and num3 == num4
         puts "Two Pairs"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs "
    elsif num2 == num3 and num4 == num5
         puts "Two Pairs"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs "
    elsif num2 == num3 and num1 == num5
         puts "Two Pairs"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs "
    elsif num2 == num3 and num1 == num4
         puts "Two Pairs"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs "
    elsif num2 == num4 and num1 == num3
         puts "Two Pairs"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs "
    elsif num2 == num4 and num1 == num5
         puts "Two Pairs"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs "
    elsif num2 == num4 and num3 == num5
         puts "Two Pairs"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs "
    elsif num2 == num5 and num1 == num3
         puts "Two Pairs"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs "
    elsif num2 == num5 and num1 == num4
         puts "Two Pairs"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs "
    elsif num2 == num5 and num3 == num4
         puts "Two Pairs"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs "
    elsif num1 == num2 
         puts "A pair"
        $w_score += 2
        $white_hand = $white_hand + " Pairs "
    elsif num1 == num3 
         puts "a pair"
         $white_hand = $white_hand + " Pairs "
        $w_score += 2
    elsif num1 == num4
         puts "A pair"
         $white_hand = $white_hand + " Pairs "
        $w_score += 2
    elsif num1 == num5
         puts "A pair"
        $w_score += 2
        $white_hand = $white_hand + " Pairs "
    elsif num2 == num3
         puts "A pair"
        $w_score += 2
        $white_hand = $white_hand + " Pairs "
    elsif num2 == num4
         puts "A pair"
        $w_score += 2
        $white_hand = $white_hand + " Pairs "
    elsif num2 == num5
         puts "A pair"
        $w_score += 2
        $white_hand = $white_hand + " Pairs "
    elsif num3 == num4
         puts "A pair"
        $w_score += 2
        $white_hand = $white_hand + " Pairs "
    elsif num3 == num5
         puts "A pair"
        $w_score += 2
        $white_hand = $white_hand + " Pairs "
    elsif num4 == num5
         puts "A pair"
        $w_score += 2
        $white_hand = $white_hand + " Pairs "
    else
        puts "no matching cards"
    end
end

def b_pairs (num1, num2, num3, num4, num5)
    if num1 == num2 and num1 == num3 and num1 == num4
        puts "4 of a Kind" 
        $b_score += 7
        $black_hand = $black_hand + " 4 of a Kind "
    elsif num1 == num2 and num1 == num3 and num1 == num5
         puts "4 of a Kind"
        $b_score += 7
        $black_hand = $black_hand + " 4 of a Kind "
    elsif num1 == num3 and num1 == num4 and num1 == num5
         puts "4 of a kind"
        $b_score += 7
        $black_hand = $black_hand + " 4 of a Kind "
    elsif num1 == num2 and num1 == num4 and num1 == num5
         puts "4 of a kind"
        $b_score += 7
        $black_hand = $black_hand + " 4 of a Kind "
    elsif num2 == num3 and num2 == num4 and num2 == num5
         puts "4 of a kind"
        $b_score += 7
        $black_hand = $black_hand + " 4 of a Kind "
    elsif num1 == num2 and num1 == num3 and num4 == num5
         puts "Full House"
        $b_score += 6
        $black_hand = $black_hand + " Full House "
    elsif num1 == num2 and num1 == num4 and num3 == num5
         puts "Full House"
         $black_hand = $black_hand + " Full House "
        $b_score += 6
    elsif num1 == num2 and num1 == num5 and num3 == num4 
         puts "Full House"
         $black_hand = $black_hand + " Full House "
        $b_score += 6
    elsif num1 == num3 and num1 == num4 and num2 == num5
         puts "Full House"
         $black_hand = $black_hand + " Full House "
        $b_score += 6
    elsif num1 == num3 and num1 == num5 and num2 == num4
         puts "Full House"
         $black_hand = $black_hand + " Full House "
        $b_score += 6
    elsif num1 == num4 and num1 == num5 and num2 == num3
         puts "Full House"
         $black_hand = $black_hand + " Full House "
        $b_score += 6
    elsif num2 == num3 and num2 == num4 and num1 == num5
         puts "Full House"
         $black_hand = $black_hand + " Full House "
        $b_score += 6
    elsif num2 == num3 and num2 == num5 and num1 == num4
         puts "Full House"
         $black_hand = $black_hand + " Full House "
        $b_score += 6
    elsif num2 == num4 and num2 == num5 and num1 == num3 
         puts "Full House"
         $black_hand = $black_hand + " Full House "
        $b_score += 6
    elsif num3 == num4 and num3 == num5 and num1 == num2
         puts "Full House"
         $black_hand = $black_hand + " Full House "
        $b_score += 6
    elsif num1 == num2 and num1 == num3
         puts "3 of a kind"
         $black_hand = $black_hand + " 3 of a kind "
        $b_score += 4
    elsif num1 == num2 and num1 == num4
         puts "3 of a kind"
         $black_hand = $black_hand + " 3 of a kind "
        $b_score += 4
    elsif num1 == num2 and num1 == num5
         puts "3 of a kind"
         $black_hand = $black_hand + " 3 of a kind "
        $b_score += 4
    elsif num1 == num3 and num1 == num4
         puts "3 of a kind"
        $b_score += 4
        $black_hand = $black_hand + " 3 of a kind "
    elsif num1 == num3 and num1 == num5
         puts "3 of a kind"
        $b_score += 4
        $black_hand = $black_hand + " 3 of a kind "
    elsif num1 == num4 and num1 == num5
         puts "3 of a kind"
        $b_score += 4
        $black_hand = $black_hand + " 3 of a kind "
    elsif num2 == num3 and num2 == num4
         puts "3 of a kind"
        $b_score += 4
        $black_hand = $black_hand + " 3 of a kind "
    elsif num2 == num3 and num2 == num5
         puts "3 of a kind"
        $b_score += 4
        $black_hand = $black_hand + " 3 of a kind "
    elsif num2 == num4 and num2 == num5 
         puts "3 of a kind"
        $b_score += 4
        $black_hand = $black_hand + " 3 of a kind "
    elsif num3 == num4 and num3 == num5
         puts "3 of a kind"
        $b_score += 4
        $black_hand = $black_hand + " 3 of a kind "
    elsif num1 == num2 and num3 == num4
         puts "Two Pairs"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs "
    elsif num1 == num2 and num3 == num5
         puts "Two Pairs"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs "
    elsif num1 == num2 and num4 == num5
         puts "Two Pairs"
        $b_score += 3 
        $black_hand = $black_hand + " Two Pairs "
    elsif num1 == num3 and num2 == num4
         puts "Two Pairs"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs "
    elsif num1 == num3 and num2 == num5
         puts "Two Pairs"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs "
    elsif num1 == num3 and num4 == num5
         puts "Two Pairs"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs "
    elsif num1 == num4 and num2 == num3
         puts "Two Pairs"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs "
    elsif num1 == num4 and num2 == num5
         puts "Two Pairs"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs "
    elsif num1 == num4 and num3 == num5
         puts "Two Pairs"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs "
    elsif num1 == num5 and num2 == num3
         puts "Two Pairs"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs "
    elsif num1 == num5 and num2 == num4
         puts "Two Pairs"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs "
    elsif num1 == num5 and num3 == num4
         puts "Two Pairs"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs "
    elsif num2 == num3 and num4 == num5
         puts "Two Pairs"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs "
    elsif num2 == num3 and num1 == num5
         puts "Two Pairs"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs "
    elsif num2 == num3 and num1 == num4
         puts "Two Pairs"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs "
    elsif num2 == num4 and num1 == num3
         puts "Two Pairs"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs "
    elsif num2 == num4 and num1 == num5
         puts "Two Pairs"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs "
    elsif num2 == num4 and num3 == num5
         puts "Two Pairs"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs "
    elsif num2 == num5 and num1 == num3
         puts "Two Pairs"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs "
    elsif num2 == num5 and num1 == num4
         puts "Two Pairs"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs "
    elsif num2 == num5 and num3 == num4
         puts "Two Pairs"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs "
    elsif num1 == num2 
         puts "A pair"
        $b_score += 2
        $black_hand = $black_hand + " Pairs "
    elsif num1 == num3 
         puts "a pair"
         $black_hand = $black_hand + " Pairs "
        $b_score += 2
    elsif num1 == num4
         puts "A pair"
         $black_hand = $black_hand + " Pairs "
        $b_score += 2
    elsif num1 == num5
         puts "A pair"
        $b_score += 2
        $black_hand = $black_hand + " Pairs "
    elsif num2 == num3
         puts "A pair"
        $b_score += 2
        $black_hand = $black_hand + " Pairs "
    elsif num2 == num4
         puts "A pair"
        $b_score += 2
        $black_hand = $black_hand + " Pairs "
    elsif num2 == num5
         puts "A pair"
        $b_score += 2
        $black_hand = $black_hand + " Pairs "
    elsif num3 == num4
         puts "A pair"
        $b_score += 2
        $black_hand = $black_hand + " Pairs "
    elsif num3 == num5
         puts "A pair"
        $b_score += 2
        $black_hand = $black_hand + " Pairs "
    elsif num4 == num5
         puts "A pair"
        $b_score += 2
        $black_hand = $black_hand + " Pairs "
    else
        puts "no matching cards"
    end
end

puts "White has "
    w_pairs(white[0][0,1],white[1][0,1],white[2][0,1],white[3][0,1],white[4][0,1])
puts "Black has"
    b_pairs(black[0][0,1],black[1][0,1],black[2][0,1],black[3][0,1],black[4][0,1])

puts "#{$white_hand} #{$w_score}"
puts "#{$black_hand} #{$b_score}"

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
