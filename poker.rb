# My Deck of Cards
deck = [] 
# Player 1
white = []
# Player 2
black = []
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


# 5.times do
#     white << deck.pop 
# end

white << "7h"
white << "7c"
white << "7d"
white << "7s"
white << "9h"

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
# return true
# else
# return false

# end
end

if counter == 5
        puts "White has a Flush"
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
    else 
        puts "Black doesn't have a flush"
end


if counter >= 3
    puts "White has 4 of a kind"
    elsif counter == 2 
        puts "White has 3 of a kind"
    elsif counter == 1
        puts "White has a pair" 
    else

end


def pairs (num1, num2, num3, num4, num5)
    if num1 == num2 and num1 == num3 and num1 == num4
        return puts "4 of a Kind"
    elsif num1 == num2 and num1 == num3 and num1 == num5
        return puts "4 of a Kind"
    elsif num1 == num3 and num1 == num4 and num1 == num5
        return puts "4 of a kind"
    elsif num1 == num2 and num1 == num4 and num1 == num5
        return puts "4 of a kind"
    elsif num2 == num3 and num2 == num4 and num2 == num5
        return puts "4 of a kind"
    elsif num1 == num2 and num1 == num3 and num4 == num5
        return puts "Full House"
    elsif num1 == num2 and num1 == num4 and num3 == num5
        return puts "Full House"
    elsif num1 == num2 and num1 == num5 and num3 == num4 
        return puts "Full House"
    elsif num1 == num3 and num1 == num4 and num2 == num5
        return puts "Full House"
    elsif num1 == num3 and num1 == num5 and num2 == num4
        return puts "Full House"
    elsif num1 == num4 and num1 == num5 and num2 == num3
        return puts "Full House"
    elsif num2 == num3 and num2 == num4 and num1 == num5
        return puts "Full House"
    elsif num2 == num3 and num2 == num5 and num1 == num4
        return puts "Full House"
    elsif num2 == num4 and num2 == num5 and num1 == num3 
        return puts "Full House"
    elsif num3 == num4 and num3 == num5 and num1 == num2
        return puts "Full House"
    elsif num1 == num2 and num1 == num3
        return puts "3 of a kind"
    elsif num1 == num2 and num1 == num4
        return puts "3 of a kind"
    elsif num1 == num2 and num1 == num5
        return puts "3 of a kind"
    elsif num1 == num3 and num1 == num4
        return puts "3 of a kind"
    elsif num1 == num3 and num1 == num5
        return puts "3 of a kind"
    elsif num1 == num4 and num1 == num5
        return puts "3 of a kind"
    elsif num2 == num3 and num2 == num4
        return puts "3 of a kind"
    elsif num2 == num3 and num2 == num5
        return puts "3 of a kind"
    elsif num2 == num4 and num2 == num5 
        return puts "3 of a kind"
    elsif num3 == num4 and num3 == num5
        return puts "3 of a kind"
    elsif num1 == num2 and num3 == num4
        return puts "Two Pairs"
    elsif num1 == num2 and num3 == num5
        return puts "Two Pairs"
    elsif num1 == num2 and num4 == num5
        return puts "Two Pairs" 
    elsif num1 == num3 and num2 == num4
        return puts "Two Pairs"
    elsif num1 == num3 and num2 == num5
        return puts "Two Pairs"
    elsif num1 == num3 and num4 == num5
        return puts "Two Pairs"
    elsif num1 == num4 and num2 == num3
        return puts "Two Pairs"
    elsif num1 == num4 and num2 == num5
        return puts "Two Pairs"
    elsif num1 == num4 and num3 == num5
        return puts "Two Pairs"
    elsif num1 == num5 and num2 == num3
        return puts "Two Pairs"
    elsif num1 == num5 and num2 == num4
        return puts "Two Pairs"
    elsif num1 == num5 and num3 == num4
        return puts "Two Pairs"
    elsif num2 == num3 and num4 == num5
        return puts "Two Pairs"
    elsif num2 == num3 and num1 == num5
        return puts "Two Pairs"
    elsif num2 == num3 and num1 == num4
        return puts "Two Pairs"
    elsif num2 == num4 and num1 == num3
        return puts "Two Pairs"
    elsif num2 == num4 and num1 == num5
        return puts "Two Pairs"
    elsif num2 == num4 and num3 == num5
        return puts "Two Pairs"
    elsif num2 == num5 and num1 == num3
        return puts "Two Pairs"
    elsif num2 == num5 and num1 == num4
        return puts "Two Pairs"
    elsif num2 == num5 and num3 == num4
        return puts "Two Pairs"
    elsif num1 == num2 
        return puts "A pair"
    elsif num1 == num3 
        return puts "a pair"
    elsif num1 == num4
        return puts "A pair"
    elsif num1 == num5
        return puts "A pair"
    elsif num2 == num3
        return puts "A pair"
    elsif num2 == num4
        return puts "A pair"
    elsif num2 == num5
        return puts "A pair"
    elsif num3 == num4
        return puts "A pair"
    elsif num3 == num5
        return puts "A pair"
    elsif num4 == num5
        return puts "A pair"
    else
        puts "no matching cards"
    end
end
puts "White has "
    pairs(white[0][0,1],white[1][0,1],white[2][0,1],white[3][0,1],white[4][0,1])
puts "Black has"
    pairs(black[0][0,1],black[1][0,1],black[2][0,1],black[3][0,1],black[4][0,1])



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
