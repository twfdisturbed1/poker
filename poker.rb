require_relative "pairs.rb"

# My Deck of Cards
deck = [] 
# Player 1
$white = []
# Player 2
$black = []

#White Score
$w_score = 0
#Black Score
$b_score = 0

# White Hand
$white_hand = " "
# Black Hand
$black_hand = " "

# White Ranks
$white_rank = ["0"]
# Black Ranks
$black_rank = ["0"]


# Building the Deck
suits = ["H", "D", "C", "S" ]
values = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "T", "J", "Q","K" ]
suits.each do |suit|
values.each do |value|
deck << "#{value}#{suit}"
end


# Shuffling the Deck
deck.shuffle!
end


# Dealing Cards to players
5.times do
    $white << deck.pop 
end
5.times do 
   $black << deck.pop
end



# $white << "Th"
# $white << "Jh"
# $white << "Qh"
# $white << "Kh"
# $white << "Ac"

# $black << "3c"
# $black << "3c"
# $black << "3c"
# $black << "AD"
# $black << "Ac"


puts  " White Players Hand #{$white} and  Black Players Hand #{$black}"


white_no_suit = [] 
white_no_suit << $white[0][0,1] << $white[1][0,1] << $white[2][0,1] << $white[3][0,1] << $white[4][0,1] 

black_no_suit = [] 
black_no_suit << $black[0][0,1] << $black[1][0,1] << $black[2][0,1] << $black[3][0,1] << $black[4][0,1]

# white_no_suit.sort!
# black_no_suit.sort!

all_poker_straights = %w(A 2 3 4 5 6 7 8 9 10 J Q K A 2 3 4 5 A J K Q T 6 7 8 9 T 7 8 9 J T 8 9 J Q T 9 J K Q T).each_cons(5)

if all_poker_straights.include?((white_no_suit.sort!)) 
    true
    $w_score += 5
    $white_hand = $white_hand + " Straight "
else
   
end

if all_poker_straights.include?((black_no_suit.sort!)) 
    true
    $b_score += 5
    $black_hand = $black_hand + " Straight "
else
end


counter = 0
$white.each_with_index do |value , index| 
    if $white[index][1,1] == $white[4][1,1]
counter += 1
else
end
end

if counter == 5
        # puts "White has a Flush"
        $w_score += 6
        $white_hand = $white_hand + "Flush"
    else 
        # puts "white doesn't have a flush"
end



counter = 0
$black.each_with_index do |value , index| 
    if $black[index][1,1] == $black[4][1,1]
            counter += 1
        else
end
end


if counter == 5
        # puts "Black has a Flush"
        $b_score += 6
        $black_hand = $black_hand + "Flush"
    else 
        # puts "Black doesn't have a flush"
end

w_high_card = []
w_high_card << white_no_suit [0] << white_no_suit[1] << white_no_suit [2] << white_no_suit [3] << white_no_suit [4]
b_high_card = []
b_high_card << black_no_suit [0] << black_no_suit[1] << black_no_suit [2] << black_no_suit [3] << black_no_suit [4]

replacements = {
    "2" => 2,
    "3" => 3,
    "4" => 4,
    "5" => 5,
    "6" => 6,
    "7" => 7,
    "8" => 8,
    "9" => 9,
    "T" => 10,
    "J" => 11,
    "Q" => 12,
    "K" => 13,
    "A" => 14,
}
$white_high_card = w_high_card.map do |e|
  replacements.fetch(e, e)
end
replacements = {
    "2" => 2,
    "3" => 3,
    "4" => 4,
    "5" => 5,
    "6" => 6,
    "7" => 7,
    "8" => 8,
    "9" => 9,
    "T" => 10,
    "J" => 11,
    "Q" => 12,
    "K" => 13,
    "A" => 14,
}
$black_high_card = b_high_card.map do |e|
  replacements.fetch(e, e)
end

w_high_card
$white_high_card.sort.last
$black_high_card.sort.last




puts "White has "
    w_pairs($white[0][0,1],$white[1][0,1],$white[2][0,1],$white[3][0,1],$white[4][0,1])
puts "Black has"
    b_pairs($black[0][0,1],$black[1][0,1],$black[2][0,1],$black[3][0,1],$black[4][0,1])

$white_rank.sort!.last
$black_rank.sort!.last



puts "White Has#{$white_hand} Score: #{$w_score}"
puts "Black Has#{$black_hand} Score: #{$b_score}"


replacements = {
    "0" => 0,    
    "2" => 2,
    "3" => 3,
    "4" => 4,
    "5" => 5,
    "6" => 6,
    "7" => 7,
    "8" => 8,
    "9" => 9,
    "T" => 10,
    "J" => 11,
    "Q" => 12,
    "K" => 13,
    "A" => 14,
}
$white_rank_1 = $white_rank.map do |e|
  replacements.fetch(e, e)
end

replacements = {
    "0" => 0,
    "2" => 2,
    "3" => 3,
    "4" => 4,
    "5" => 5,
    "6" => 6,
    "7" => 7,
    "8" => 8,
    "9" => 9,
    "T" => 10,
    "J" => 11,
    "Q" => 12,
    "K" => 13,
    "A" => 14,
}
$black_rank_1 = $black_rank.map do |e|
  replacements.fetch(e, e)
end

$white_rank_1.sort.last
$black_rank_1.sort.last

if
  $w_score > $b_score
  puts "White Wins"
elsif
    $b_score > $w_score
    puts "Black Wins"  
elsif $w_score and $b_score == 5 or $w_score and $b_score == 11
        if $white_high_card.sort.last == 14 and $white_high_card.sort[3] == 5
                puts "Black Player Wins"
        elsif $black_high_card.sort.last == 14 and $black_high_card.sort[3] == 5
                puts "White Player Wins"
        end
elsif $w_score > 0 and $b_score == $w_score
    if $white_rank_1.sort.last > $black_rank_1.sort.last
        puts "White Wins"
    elsif $white_rank_1.sort.last < $black_rank_1.sort.last
        puts "Black Wins"    
    else 
        if $white_high_card.sort.last > $black_high_card.sort.last
            puts "White player Wins"
        elsif $black_high_card.sort.last > $white_high_card.sort.last
            puts "Black Player Wins"
        elsif $black_high_card.sort[3] > $white_high_card.sort[3] 
            puts "Black Player Wins"
        elsif $black_high_card.sort[3] < $white_high_card.sort[3] 
            puts "White Player Wins"
        elsif $black_high_card.sort[2] > $white_high_card.sort[2]
            puts "Black Player Wins"
        elsif $black_high_card.sort[2] < $white_high_card.sort[2]
            puts "White Player Wins"
        elsif $black_high_card.sort[1] > $white_high_card.sort[1]
            puts "Black Player Wins"
        elsif $black_high_card.sort[1] < $white_high_card.sort[1]
            puts "White Player Wins"
        elsif $black_high_card.sort[0] > $white_high_card.sort[0]
            puts "Black Player Wins"
        elsif $black_high_card.sort[0] < $white_high_card.sort[0]
            puts "White Player Wins"
        else
            puts "Its a Tie"
        end
    end
else
    if $white_high_card.sort.last > $black_high_card.sort.last
        puts "White player Wins"
    elsif $black_high_card.sort.last > $white_high_card.sort.last
        puts "Black Player Wins"
    elsif $black_high_card.sort[3] > $white_high_card.sort[3] 
        puts "Black Player Wins"
    elsif $black_high_card.sort[3] < $white_high_card.sort[3] 
        puts "White Player Wins"
    elsif $black_high_card.sort[2] > $white_high_card.sort[2]
        puts "Black Player Wins"
    elsif $black_high_card.sort[2] < $white_high_card.sort[2]
        puts "White Player Wins"
    elsif $black_high_card.sort[1] > $white_high_card.sort[1]
        puts "Black Player Wins"
    elsif $black_high_card.sort[1] < $white_high_card.sort[1]
        puts "White Player Wins"
    elsif $black_high_card.sort[0] > $white_high_card.sort[0]
        puts "Black Player Wins"
    elsif $black_high_card.sort[0] < $white_high_card.sort[0]
        puts "White Player Wins"
    else
        puts "Its a Tie"
    end
end

