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
    attr_accessor :value, :type
    def initialize(str)
      v = str[0]
      if v == "T"
        @value = 10
      elsif v == "J"
        @value = 11
      elsif v == "Q"
        @value = 12
      elsif v == "K"
        @value = 13
      elsif v == "A"
        @value = 14
      else
        @value = v.to_i
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

def w_pairs (num1, num2, num3, num4, num5)
    if num1 == num2 and num1 == num3 and num1 == num4
        puts "4 of a Kind of #{num1}" 
        $w_score += 7
        $white_hand = $white_hand + " 4 of a kind of #{num1} "
    elsif num1 == num2 and num1 == num3 and num1 == num5
         puts "4 of a Kind of #{num1}"
        $w_score += 7
        $white_hand = $white_hand + " 4 of a kind of #{num1} "
    elsif num1 == num3 and num1 == num4 and num1 == num5
         puts "4 of a kind of #{num1}"
        $w_score += 7
        $white_hand = $white_hand + " 4 of a kind of #{num1} "
    elsif num1 == num2 and num1 == num4 and num1 == num5
         puts "4 of a kind of #{num1}" 
        $w_score += 7
        $white_hand = $white_hand + " 4 of a kind of #{num1} "
    elsif num2 == num3 and num2 == num4 and num2 == num5
         puts "4 of a kind of #{num2}"
        $w_score += 7
        $white_hand = $white_hand + " 4 of a kind of #{num2} "
    elsif num1 == num2 and num1 == num3 and num4 == num5
         puts "Full House of #{num1} and #{num4}"
        $w_score += 6
        $white_hand = $white_hand + " Full House of #{num3} and #{num1} "
    elsif num1 == num2 and num1 == num4 and num3 == num5
         puts "Full House of #{num1} and #{num3}"
         $white_hand = $white_hand + " Full House of #{num1} and #{num3} "
        $w_score += 6
    elsif num1 == num2 and num1 == num5 and num3 == num4 
         puts "Full House of #{num1} and #{num3}"
         $white_hand = $white_hand + " Full House of #{num1} and #{num3} "
        $w_score += 6
    elsif num1 == num3 and num1 == num4 and num2 == num5
         puts "Full House of #{num1} and #{num2}"
         $white_hand = $white_hand + " Full House of #{num1} and #{num2} "
        $w_score += 6
    elsif num1 == num3 and num1 == num5 and num2 == num4
         puts "Full House of #{num1} and #{num2}"
         $white_hand = $white_hand + " Full House of #{num1} and #{num2} "
        $w_score += 6
    elsif num1 == num4 and num1 == num5 and num2 == num3
         puts "Full House of #{num1} and #{num2}"
         $white_hand = $white_hand + " Full House of #{num1} and #{num2} "
        $w_score += 6
    elsif num2 == num3 and num2 == num4 and num1 == num5
         puts "Full House of #{num2} and #{num1}"
         $white_hand = $white_hand + " Full House of #{num2} and #{num1} "
        $w_score += 6
    elsif num2 == num3 and num2 == num5 and num1 == num4
         puts "Full House of #{num2} and #{num1}"
         $white_hand = $white_hand + " Full House of #{num2} and #{num1} "
        $w_score += 6
    elsif num2 == num4 and num2 == num5 and num1 == num3 
         puts "Full House of #{num2} and #{num1}"
         $white_hand = $white_hand + " Full House of #{num2} and #{num1} "
        $w_score += 6
    elsif num3 == num4 and num3 == num5 and num1 == num2
         puts "Full House of #{num3} and #{num1}"
         $white_hand = $white_hand + " Full House of #{num3} and #{num1} "
        $w_score += 6
    elsif num1 == num2 and num1 == num3
         puts "3 of a kind of #{num1}"
         $white_hand = $white_hand + " 3 of a kind of #{num1} "
        $w_score += 4
    elsif num1 == num2 and num1 == num4
         puts "3 of a kind of #{num1}"
         $white_hand = $white_hand + " 3 of a kind of #{num1} "
        $w_score += 4
    elsif num1 == num2 and num1 == num5
         puts "3 of a kind of #{num1}"
         $white_hand = $white_hand + " 3 of a kind of #{num1} "
        $w_score += 4
    elsif num1 == num3 and num1 == num4
         puts "3 of a kind of #{num1}"
        $w_score += 4
        $white_hand = $white_hand + " 3 of a kind of #{num1} "
    elsif num1 == num3 and num1 == num5
         puts "3 of a kind of #{num1}"
        $w_score += 4
        $white_hand = $white_hand + " 3 of a kind of #{num1} "
    elsif num1 == num4 and num1 == num5
         puts "3 of a kind of #{num1}"
        $w_score += 4
        $white_hand = $white_hand + " 3 of a kind of #{num1} "
    elsif num2 == num3 and num2 == num4
         puts "3 of a kind of #{num2}"
        $w_score += 4
        $white_hand = $white_hand + " 3 of a kind of #{num2} "
    elsif num2 == num3 and num2 == num5
         puts "3 of a kind of #{num2}"
        $w_score += 4
        $white_hand = $white_hand + " 3 of a kind of #{num2} "
    elsif num2 == num4 and num2 == num5 
         puts "3 of a kind of #{num2}"
        $w_score += 4
        $white_hand = $white_hand + " 3 of a kind of #{num3} "
    elsif num3 == num4 and num3 == num5
         puts "3 of a kind of #{num3}"
        $w_score += 4
        $white_hand = $white_hand + " 3 of a kind of #{num3} "
    elsif num1 == num2 and num3 == num4
         puts "Two Pairs of #{num1} and #{num3}"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs of #{num2} and #{num3}   "
    elsif num1 == num2 and num3 == num5
         puts "Two Pairs of #{num1} and #{num3}"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs of #{num1} and #{num3}   "
    elsif num1 == num2 and num4 == num5
         puts "Two Pairs of #{num1} and #{num4}"
        $w_score += 3 
        $white_hand = $white_hand + " Two Pairs of #{num1} and #{num4}   "
    elsif num1 == num3 and num2 == num4
         puts "Two Pairs of #{num1} and #{num2}"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs of #{num1} and #{num2}   "
    elsif num1 == num3 and num2 == num5
         puts "Two Pairs of #{num1} and #{num2}"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs of #{num1} and #{num2}   "
    elsif num1 == num3 and num4 == num5
         puts "Two Pairs of #{num1} and #{num4}"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs of #{num1} and #{num4}   "
    elsif num1 == num4 and num2 == num3
         puts "Two Pairs of #{num1} and #{num2}"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs of #{num1} and #{num2}   "
    elsif num1 == num4 and num2 == num5
         puts "Two Pairs of #{num1} and #{num2}"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs of #{num1} and #{num2}   "
    elsif num1 == num4 and num3 == num5
         puts "Two Pairs of #{num1} and #{num3}"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs of #{num1} and #{num3}   "
    elsif num1 == num5 and num2 == num3
         puts "Two Pairs of #{num1} and #{num2}"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs of #{num1} and #{num2}   "
    elsif num1 == num5 and num2 == num4
         puts "Two Pairs of #{num1} and #{num2}"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs of #{num1} and #{num2}   "
    elsif num1 == num5 and num3 == num4
         puts "Two Pairs of #{num1} and #{num3}"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs of #{num1} and #{num3}   "
    elsif num2 == num3 and num4 == num5
         puts "Two Pairs of #{num2} and #{num4}"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs of #{num2} and #{num4}   "
    elsif num2 == num3 and num1 == num5
         puts "Two Pairs of #{num2} and #{num1}"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs of #{num2} and #{num1}   "
    elsif num2 == num3 and num1 == num4
         puts "Two Pairs of #{num2} and #{num1}"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs of #{num2} and #{num1}   "
    elsif num2 == num4 and num1 == num3
         puts "Two Pairs of #{num2} and #{num1}"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs of #{num2} and #{num1}   "
    elsif num2 == num4 and num1 == num5
         puts "Two Pairs of #{num2} and #{num1}"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs of #{num2} and #{num1}   "
    elsif num2 == num4 and num3 == num5
         puts "Two Pairs of #{num2} and #{num3}"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs of #{num2} and #{num3}   "
    elsif num2 == num5 and num1 == num3
         puts "Two Pairs of #{num2} and #{num1}"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs of #{num2} and #{num1}   "
    elsif num2 == num5 and num1 == num4
         puts "Two Pairs of #{num2} and #{num1}"
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs of #{num2} and #{num1}   "
    elsif num2 == num5 and num3 == num4
         puts "Two Pairs of #{num2} and #{num3} "
        $w_score += 3
        $white_hand = $white_hand + " Two Pairs of #{num2} and #{num3}  "
    elsif num1 == num2 
         puts "A pair of #{num1}"
        $w_score += 2
        $white_hand = $white_hand + " a pair of #{num1}"
    elsif num1 == num3 
         puts "a pair of #{num1}"
         $white_hand = $white_hand + " a pair of #{num1} "
        $w_score += 2
    elsif num1 == num4
         puts "A pair of #{num1}"
         $white_hand = $white_hand + " a pair of #{num1} "
        $w_score += 2
    elsif num1 == num5
         puts "A pair of #{num1}"
        $w_score += 2
        $white_hand = $white_hand + " a pair of #{num1} "
    elsif num2 == num3
         puts "A pair of #{num2}"
        $w_score += 2
        $white_hand = $white_hand + " a pair of #{num2} "
    elsif num2 == num4
         puts "A pair of #{num2}"
        $w_score += 2
        $white_hand = $white_hand + " a pair of #{num2} "
    elsif num2 == num5
         puts "A pair of #{num2}"
        $w_score += 2
        $white_hand = $white_hand + " a pair of #{num2} "
    elsif num3 == num4
         puts "A pair of #{num3}"
        $w_score += 2
        $white_hand = $white_hand + " a pair of #{num3} "
    elsif num3 == num5
         puts "A pair of #{num3}"
        $w_score += 2
        $white_hand = $white_hand + " a pair of #{num3} "
    elsif num4 == num5
         puts "A pair of #{num4}"
        $w_score += 2
        $white_hand = $white_hand + " a pair of #{num4} "
    else
        puts "no matching cards"
    end
end

def b_pairs (num1, num2, num3, num4, num5)
    if num1 == num2 and num1 == num3 and num1 == num4
        puts "4 of a Kind of #{num1}" 
        $b_score += 7
        $black_hand = $black_hand + " 4 of a kind of #{num1} "
    elsif num1 == num2 and num1 == num3 and num1 == num5
         puts "4 of a Kind of #{num1}"
        $b_score += 7
        $black_hand = $black_hand + " 4 of a kind of #{num1} "
    elsif num1 == num3 and num1 == num4 and num1 == num5
         puts "4 of a kind of #{num1}"
        $b_score += 7
        $black_hand = $black_hand + " 4 of a kind of #{num1} "
    elsif num1 == num2 and num1 == num4 and num1 == num5
         puts "4 of a kind of #{num1}" 
        $b_score += 7
        $black_hand = $black_hand + " 4 of a kind of #{num1} "
    elsif num2 == num3 and num2 == num4 and num2 == num5
         puts "4 of a kind of #{num2}"
        $b_score += 7
        $black_hand = $black_hand + " 4 of a kind of #{num2} "
    elsif num1 == num2 and num1 == num3 and num4 == num5
         puts "Full House of #{num1} and #{num4}"
        $b_score += 6
        $black_hand = $black_hand + " Full House of #{num3} and #{num1} "
    elsif num1 == num2 and num1 == num4 and num3 == num5
         puts "Full House of #{num1} and #{num3}"
         $black_hand = $black_hand + " Full House of #{num1} and #{num3} "
        $b_score += 6
    elsif num1 == num2 and num1 == num5 and num3 == num4 
         puts "Full House of #{num1} and #{num3}"
         $black_hand = $black_hand + " Full House of #{num1} and #{num3} "
        $b_score += 6
    elsif num1 == num3 and num1 == num4 and num2 == num5
         puts "Full House of #{num1} and #{num2}"
         $black_hand = $black_hand + " Full House of #{num1} and #{num2} "
        $b_score += 6
    elsif num1 == num3 and num1 == num5 and num2 == num4
         puts "Full House of #{num1} and #{num2}"
         $black_hand = $black_hand + " Full House of #{num1} and #{num2} "
        $b_score += 6
    elsif num1 == num4 and num1 == num5 and num2 == num3
         puts "Full House of #{num1} and #{num2}"
         $black_hand = $black_hand + " Full House of #{num1} and #{num2} "
        $b_score += 6
    elsif num2 == num3 and num2 == num4 and num1 == num5
         puts "Full House of #{num2} and #{num1}"
         $black_hand = $black_hand + " Full House of #{num2} and #{num1} "
        $b_score += 6
    elsif num2 == num3 and num2 == num5 and num1 == num4
         puts "Full House of #{num2} and #{num1}"
         $black_hand = $black_hand + " Full House of #{num2} and #{num1} "
        $b_score += 6
    elsif num2 == num4 and num2 == num5 and num1 == num3 
         puts "Full House of #{num2} and #{num1}"
         $black_hand = $black_hand + " Full House of #{num2} and #{num1} "
        $b_score += 6
    elsif num3 == num4 and num3 == num5 and num1 == num2
         puts "Full House of #{num3} and #{num1}"
         $black_hand = $black_hand + " Full House of #{num3} and #{num1} "
        $b_score += 6
    elsif num1 == num2 and num1 == num3
         puts "3 of a kind of #{num1}"
         $black_hand = $black_hand + " 3 of a kind of #{num1} "
        $b_score += 4
    elsif num1 == num2 and num1 == num4
         puts "3 of a kind of #{num1}"
         $black_hand = $black_hand + " 3 of a kind of #{num1} "
        $b_score += 4
    elsif num1 == num2 and num1 == num5
         puts "3 of a kind of #{num1}"
         $black_hand = $black_hand + " 3 of a kind of #{num1} "
        $b_score += 4
    elsif num1 == num3 and num1 == num4
         puts "3 of a kind of #{num1}"
        $b_score += 4
        $black_hand = $black_hand + " 3 of a kind of #{num1} "
    elsif num1 == num3 and num1 == num5
         puts "3 of a kind of #{num1}"
        $b_score += 4
        $black_hand = $black_hand + " 3 of a kind of #{num1} "
    elsif num1 == num4 and num1 == num5
         puts "3 of a kind of #{num1}"
        $b_score += 4
        $black_hand = $black_hand + " 3 of a kind of #{num1} "
    elsif num2 == num3 and num2 == num4
         puts "3 of a kind of #{num2}"
        $b_score += 4
        $black_hand = $black_hand + " 3 of a kind of #{num2} "
    elsif num2 == num3 and num2 == num5
         puts "3 of a kind of #{num2}"
        $b_score += 4
        $black_hand = $black_hand + " 3 of a kind of #{num2} "
    elsif num2 == num4 and num2 == num5 
         puts "3 of a kind of #{num2}"
        $b_score += 4
        $black_hand = $black_hand + " 3 of a kind of #{num3} "
    elsif num3 == num4 and num3 == num5
         puts "3 of a kind of #{num3}"
        $b_score += 4
        $black_hand = $black_hand + " 3 of a kind of #{num3} "
    elsif num1 == num2 and num3 == num4
         puts "Two Pairs of #{num1} and #{num3}"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs of #{num2} and #{num3}   "
    elsif num1 == num2 and num3 == num5
         puts "Two Pairs of #{num1} and #{num3}"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs of #{num1} and #{num3}   "
    elsif num1 == num2 and num4 == num5
         puts "Two Pairs of #{num1} and #{num4}"
        $b_score += 3 
        $black_hand = $black_hand + " Two Pairs of #{num1} and #{num4}   "
    elsif num1 == num3 and num2 == num4
         puts "Two Pairs of #{num1} and #{num2}"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs of #{num1} and #{num2}   "
    elsif num1 == num3 and num2 == num5
         puts "Two Pairs of #{num1} and #{num2}"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs of #{num1} and #{num2}   "
    elsif num1 == num3 and num4 == num5
         puts "Two Pairs of #{num1} and #{num4}"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs of #{num1} and #{num4}   "
    elsif num1 == num4 and num2 == num3
         puts "Two Pairs of #{num1} and #{num2}"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs of #{num1} and #{num2}   "
    elsif num1 == num4 and num2 == num5
         puts "Two Pairs of #{num1} and #{num2}"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs of #{num1} and #{num2}   "
    elsif num1 == num4 and num3 == num5
         puts "Two Pairs of #{num1} and #{num3}"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs of #{num1} and #{num3}   "
    elsif num1 == num5 and num2 == num3
         puts "Two Pairs of #{num1} and #{num2}"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs of #{num1} and #{num2}   "
    elsif num1 == num5 and num2 == num4
         puts "Two Pairs of #{num1} and #{num2}"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs of #{num1} and #{num2}   "
    elsif num1 == num5 and num3 == num4
         puts "Two Pairs of #{num1} and #{num3}"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs of #{num1} and #{num3}   "
    elsif num2 == num3 and num4 == num5
         puts "Two Pairs of #{num2} and #{num4}"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs of #{num2} and #{num4}   "
    elsif num2 == num3 and num1 == num5
         puts "Two Pairs of #{num2} and #{num1}"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs of #{num2} and #{num1}   "
    elsif num2 == num3 and num1 == num4
         puts "Two Pairs of #{num2} and #{num1}"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs of #{num2} and #{num1}   "
    elsif num2 == num4 and num1 == num3
         puts "Two Pairs of #{num2} and #{num1}"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs of #{num2} and #{num1}   "
    elsif num2 == num4 and num1 == num5
         puts "Two Pairs of #{num2} and #{num1}"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs of #{num2} and #{num1}   "
    elsif num2 == num4 and num3 == num5
         puts "Two Pairs of #{num2} and #{num3}"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs of #{num2} and #{num3}   "
    elsif num2 == num5 and num1 == num3
         puts "Two Pairs of #{num2} and #{num1}"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs of #{num2} and #{num1}   "
    elsif num2 == num5 and num1 == num4
         puts "Two Pairs of #{num2} and #{num1}"
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs of #{num2} and #{num1}   "
    elsif num2 == num5 and num3 == num4
         puts "Two Pairs of #{num2} and #{num3} "
        $b_score += 3
        $black_hand = $black_hand + " Two Pairs of #{num2} and #{num3}  "
    elsif num1 == num2 
         puts "A pair of #{num1}"
        $b_score += 2
        $black_hand = $black_hand + " a pair of #{num1}"
    elsif num1 == num3 
         puts "a pair of #{num1}"
         $black_hand = $black_hand + " a pair of #{num1} "
        $b_score += 2
    elsif num1 == num4
         puts "A pair of #{num1}"
         $black_hand = $black_hand + " a pair of #{num1} "
        $b_score += 2
    elsif num1 == num5
         puts "A pair of #{num1}"
        $b_score += 2
        $black_hand = $black_hand + " a pair of #{num1} "
    elsif num2 == num3
         puts "A pair of #{num2}"
        $b_score += 2
        $black_hand = $black_hand + " a pair of #{num2} "
    elsif num2 == num4
         puts "A pair of #{num2}"
        $b_score += 2
        $black_hand = $black_hand + " a pair of #{num2} "
    elsif num2 == num5
         puts "A pair of #{num2}"
        $b_score += 2
        $black_hand = $black_hand + " a pair of #{num2} "
    elsif num3 == num4
         puts "A pair of #{num3}"
        $b_score += 2
        $black_hand = $black_hand + " a pair of #{num3} "
    elsif num3 == num5
         puts "A pair of #{num3}"
        $b_score += 2
        $black_hand = $black_hand + " a pair of #{num3} "
    elsif num4 == num5
         puts "A pair of #{num4}"
        $b_score += 2
        $black_hand = $black_hand + " a pair of #{num4} "
    else
        puts "no matching cards"
    end
end

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
