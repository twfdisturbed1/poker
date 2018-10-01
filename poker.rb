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


# 5.times do
#     white << deck.pop 
# end

white << "3h"
white << "5c"
white << "2d"
white << "5s"
white << "5h"

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

counter = 0
white.each_with_index do |value , index| 
if white[index][0,1] == white[4][0,1] 
counter += 1
puts "#{counter}"
    if counter == 3
            break
    end
else
end
end

if counter == 3
    puts "White has 4 of a kind"
    elsif counter == 2 
        puts "White has 3 of a kind"
    elsif counter == 1
        puts "White has a pair" 
    else

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
